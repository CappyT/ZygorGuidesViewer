local ZGV = ZygorGuidesViewer   if not ZGV then return end

-----------------------------------------
-- INFORMATION
-----------------------------------------
--[[

--]]
-----------------------------------------
-- LOCAL REFERENCES
-----------------------------------------

local tinsert,tremove,sort,min,max,floor,type,pairs,ipairs,class = table.insert,table.remove,table.sort,math.min,math.max,math.floor,type,pairs,ipairs,class
local tonumber = tonumber
local print = ZGV.print
local L = ZGV.L

local GOALTYPES		-- initialized at startup

-----------------------------------------
-- LOCAL VARIABLES
-----------------------------------------

local Parser = {}
local Commands = {}
local GuideCommands = {}
local StepCommands = {}

-----------------------------------------
-- SAVED REFERENCES
-----------------------------------------

ZGV.Parser = Parser

-----------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------

local ConditionEnv = {
	_G = _G,
	-- variables needing update
	level=1,
	intlevel=1,
	ZGV=ZGV,
	print=ZGV.print,

	-- these must be assigned in an _Update() call, if "local" scripts are to work. HORRIBLE local-faking.
	guide=nil,
	step=nil,
	goal=nil,

	_Update = function()
		Parser.ConditionEnv.level = ZGV.Utils:GetPlayerPreciseLevel()
		Parser.ConditionEnv.intlevel = floor(Parser.ConditionEnv.level)
		if ZGV.db.char.fakelevel and ZGV.db.char.fakelevel>0 then Parser.ConditionEnv.level=ZGV.db.char.fakelevel end
	end,

	--[[
	_Setup = function()
		-- reputation 'constants'
		for standing,num in pairs(ZGV.StandingNamesEngRev) do Parser.ConditionEnv[standing]=num end
		for standing,num in pairs(ZGV.FriendshipNamesEngRev) do Parser.ConditionEnv[standing]=num end
	end,
	--]]

	_SetLocal = function(guide,step,goal)
		Parser.ConditionEnv.guide=guide
		Parser.ConditionEnv.step=step
		Parser.ConditionEnv.goal=goal
	end,

	-- independent data feeds
	completedquest = function(id,stage) --stage can be omitted
		do return false,false end --TODO
		local _  if type(id)=="string" then _,id,_,obj=Parser.ParseQuest(id) end
		return ZGV.Quests:IsQuestStageComplete(id,obj)
	end,
	havequest = function(id,stage)
		do return false,false end --TODO
		local _  if type(id)=="string" then _,id,_,stage=Parser.ParseQuest(id) end
		local q=ZGV.Quests[id]
		if stage then return q and (q:GetCurrentStageNum()==stage) end
		return q
	end,
	queststage = function(id)
		do return false,false end --TODO
		local _  if type(id)=="string" then _,id=Parser.ParseQuest(id) end
		if ZGV.Quests:IsQuestComplete(id) then return 0/0 end  -- how's THIS for a hack! This will fail comparison to any number.
		local q=ZGV.Quests[id]
		if q then  return q:GetCurrentStageNum()  else  return 0  end --not in journal, never done: stage 0.
	end,
	achieved = function(id,cond)
		return ZGV.GOALTYPES['achieve'].iscomplete(ZGV,id,cond)
	end,
	dist = function(map,x,z,y)
		local step=Parser.ConditionEnv.step
		local goal=Parser.ConditionEnv.goal
		if not y then
			map,x,z,y = ((goal and goal.map) or (step and step.map)),map,x,z
		end
		if not x and not z and not y and goal and goal.x then x,z,y=goal.x,goal.z,goal.y end
		if not x and not z and not y and step and step.goals then
			for gi,go in ipairs(step.goals) do if go.x then map,x,z,y=go.map,go.x,go.z,go.y break end end
		end
		
		if map then
			_, _, continentId = ZGV.Lib:GetZone(map)
			if GameLib.GetCurrentZoneMap().continentId ~= continentId then
				return 99999
			end
			
		end
			
		
		
		
		
		return ZGV.Lib:GetDistanceTo(x,z,y)
	end,
	raceclass = function(raceclass)
		return ZGV.Utils:RaceClassMatch(raceclass,true)
	end,
	--[[
		rep = function(faction)
			if ZGV:GetReputation(faction).friendship then --dummy proof this.
				return ZGV:GetReputation(faction).friendship
			end
			return ZGV:GetReputation(faction).standing
		end,
		friend = function(faction)
			return ZGV:GetReputation(faction).friendship
		end,
		repval = function(faction,baselevel)
			baselevel = ZGV.StandingNamesEngRev[baselevel]
			local standing =  ZGV:GetReputation(faction).standing
			if standing < baselevel then return -99999 --We are under the needed standing fo sho
			elseif standing > baselevel then return 99999 --We are over the standing
			else return ZGV:GetReputation(faction).val-ZGV:GetReputation(faction).min
			end
		end,
		skill = function(skill)
			return ZGV:GetSkill(skill).level
		end,
		skillmax = function(skill)
			return ZGV:GetSkill(skill).max
		end,
		hasprof = function(hasprof,minlevel,maxlevel)
			return ZGV:MatchProfs(hasprof,minlevel,maxlevel)
		end,
		isevent = function(eventname)
			return ZGV:FindEvent(eventname)
		end,
		achieved = function(achieveid)
			return select(4,GetAchievementInfo(achieveid))
		end,
		knowspell = function(spellid)
			return IsSpellKnown(spellid)
		end,
		haspet = function(speciesId)
			local numCollected, limit = C_PetJournal.GetNumCollectedInfo(speciesId)
			return ((numCollected or 0) > 0)
		end,
		thunderstage = function()
			return ZGV:GetThunderStage()
		end,
		thunderprogress = function()
			return math.floor(select(2,ZGV:GetThunderStage())*100)
		end,
		hasmount = function(mountspell)
			local id,name,spell
			for i=1,GetNumCompanions("MOUNT") do
				 id,name,spell = GetCompanionInfo("MOUNT",i)
				 if spell==mountspell then return true end
			end
		end,
		itemcount = function(...)
			local total = 0
			local count = select("#", ...)
			for i = 1, count do
				total = total + GetItemCount(select(i, ...))
			end
			return total
		end,
		curcount = function(curid)
			return (select(2,GetCurrencyInfo(curid)))
		end,
		heroic_dung = function(diff)
			diff = diff or 2
			return GetDungeonDifficultyID()==diff
		end,
		heroic_raid = function(diff)
			diff = diff or 3
			return GetCurrentRaidDifficulty()==diff
		end,
	--]]
}
Parser.ConditionEnv=ConditionEnv  --DEBUG

-----------------------------------------
-- GUIDE COMMANDS
-----------------------------------------

--[[
	GuideCommands
	parameters
	 @ guide		-- current guide
	 @ params		-- part of a line being parsed
	return
	 @ error			-- parserror to throw
	 @ breakline	-- Break from parsing this line
	 @ breakall		-- break from parsing this guide.
--]]


GuideCommands['leechsteps'] = function(guide,params)
	-- works anywhere
	local fromguide,from,to = params:match("^\"(.+)\"%s-,%s-(.-)%s-,%s-(.-)$")

	guide.leechsteps_guide = ZGV:SanitizeGuideTitle(fromguide or params:match("^\"(.+)\"$") or params) :gsub("\\+","\\")
	guide.leechsteps_from = tonumber(from) or 1
	guide.leechsteps_to = tonumber(to) or 999

	if guide.parsing_fully then
		-- okay, just do it now.
		local leechedguide = ZGV:GetGuideByTitle(guide.leechsteps_guide)
		if not leechedguide then
			Parser:Debug("leeched '"..guide.leechsteps_guide.."' not found in "..guide.title)
			return true,true
		end
		if not leechedguide.fully_parsed then
			Parser:Debug("Forcefully parsing "..guide.leechsteps_guide.." for leeching")
			local parsed = leechedguide:Parse(true)
			if not parsed or not leechedguide.steps then
				Parser:Debug("leeched not parsing")
				return true,true
			end
		end

		Parser:Debug("Parser:'leechsteps' guide "..guide.leechsteps_guide.." from "..guide.leechsteps_from.." to "..guide.leechsteps_to)

		local leeched=0
		-- okay, leech
		for i=guide.leechsteps_from,guide.leechsteps_to do
			-- holy shit. Clone all the steps. No memory shall be spared :(
			local step = leechedguide.steps[i]
			if step then
				local newstep = ZGV.StepProto:New()

				-- Clone all none function attributes of the step, and all goals.
				for k,v in pairs(step) do
					if k=="goals" then
						for gi,goal in ipairs(v) do
							local newgoal = ZGV.GoalProto:New()

							for gk,gv in pairs(goal) do
								if type(gv)~="function" then newgoal[gk]=gv end
							end

							newstep:AddGoal(newgoal)
						end
					elseif type(v)~="function" then
						newstep[k]=v
					end
				end

				guide:AddStep(newstep)
				leeched=leeched+1
			end
		end

		Parser:Debug("Leeched "..leeched.." steps, total now "..(#guide.steps)..".")
	end

	return true
end


GuideCommands['next'] = function(guide,params)
	params = params:gsub("^\"(.-)\"$","%1")
	params = tonumber(params) or params
	guide.next=ZGV:SanitizeGuideTitle(params)
end

GuideCommands['author'] = function(guide,params)
	guide.author = params
end

GuideCommands['description'] = function(guide,params)
	guide.description=(guide.description and (guide.description.."\n") or "") .. params	-- If there is already a description then append it with a \n
end

GuideCommands['startlevel'] = function(guide,params)
	local level = tonumber(params)
	if not level then return "bad level number" end

	guide.startlevel = level
end

GuideCommands['endlevel'] = function(guide,params)
	local level = tonumber(params)
	if not level then return "bad level number" end

	guide.endlevel = level
end

GuideCommands['nextguide'] = function(guide,params)
	local nextguide = params
	if not level then return "bad next guide" end

	guide.nextguide = nextguide
end




GuideCommands['condition'] = function(guide,params)		--TODO
	local case,cond = params:match("(.-) (.+)$")

	if case=="suggested"
	or case=="valid"
	or case=="loaded"
	or case=="invalid"
	or case=="end"
	then

		local cond2,msg = cond:match("(.+)!!(.+)")
		if cond2 then cond=cond2 end

		
		if cond:sub(1,1)=="!" then
			-- special condition tag
			cond=cond:sub(2)
			local tag,data = cond:match("(.-) (.+)")
			data=data or true
			tag=tag or cond
			guide['condition_'..case..'_'..cond]=data
		else
			guide.env = Parser.ConditionEnv
			local fun,err = Parser.MakeCondition(cond,true)
			if not fun then return err end
			guide['condition_'..case..'_raw']=cond
			guide['condition_'..case]=fun
			guide['condition_'..case..'_msg']=msg
		end

	else
		return false,"wrong condition type (not suggested/valid/invalid/end) or rogue guide condition in steps"
	end

	--if case=="loaded" and guide.condition_load and not guide.condition_load() then return false,"SKIPLOAD" end
end

-----------------------------------------
-- STEP COMMANDS
-----------------------------------------

StepCommands['label'] = function(step,params)
	params = params:gsub("^\"(.-)\"$","%1") -- strip quotes
	if params~="" then
		step.label = params
	else
		return "label without text"
	end
end

StepCommands['only'] = function(step,params)
	local cond = params:match("^if%s+(.*)$")
	if cond then
		-- condition match and is a |only if
		local fun,err = Parser.MakeCondition(cond,true)
		if not fun then return err end

		step.condition_visible_raw=cond
		step.condition_visible=fun
	else
		params = params:gsub("%s*,%s*",",")
		if params:find(",") then
			step.requirement = {}
			for s in params:gmatch("([^,]+)") do
				table.insert(step.requirement,s)
			end
		else
			step.requirement = params
		end
	end
end

local function travelfor_is_valid_func(step)
	local guide = Parser.ConditionEnv.guide  if not guide then return true,"no guide" end  -- yes, return "it's valid"!
	local steps = guide.steps  if not steps then return true,"no steps" end
	local step = Parser.ConditionEnv.step  if not step then return true,"no step" end
	local stepnum = step.num  if not stepnum then return true,"no num" end
	local travelfor = step.travelfor  if not travelfor then return true,"no travelfor" end

	repeat
		stepnum=stepnum+1  travelfor=travelfor-1
		local step = steps[stepnum]
		if step and not step:IsTravel() and step:IsIncomplete() then return true,stepnum end
	until not step or travelfor<=0
	return false,"all bad"
end

StepCommands['travelfor'] = function(step,params)
	step.travelfor = tonumber(params)

	step.condition_visible_raw="using travelfor_is_valid_func"
	step.condition_visible=travelfor_is_valid_func
end



-----------------------------------------
-- GOAL COMMANDS
-----------------------------------------

-- Goals in Goal.lua using GoalTypes because they also have completion

-----------------------------------------
-- HELPER FUNCTIONS
-----------------------------------------

function Parser.MakeCondition(cond,forcebool)
	if cond:find("return") then
		-- leave it be
	elseif forcebool then
		cond = ("_Update() return not not (%s)"):format(cond)
	else
		cond = ("_Update()  return (%s)"):format(cond)
	end

	local fun,err = loadstring(cond)
	if fun then setfenv(fun,ConditionEnv) end

	return fun,err
end


function Parser:GetGuideCommandHandler(cmd)
	return GuideCommands[cmd]
end

function Parser:GetStepCommandHandler(cmd)
	return StepCommands[cmd]
end

function Parser:GetGoalCommandHandler(cmd)
	if GOALTYPES[cmd] and GOALTYPES[cmd].parse then
		return GOALTYPES[cmd].parse
	end
end

-----------------------------------------
-- PARSING FUNCTIONS
-----------------------------------------

function Parser.ParseMapXYDist(text, prevmap)
	local mapId,mapName,continentId,continentName ,x,z,y,disttype,dist,_,err
	
	_,disttype,dist = text:match("^(.-)%s*([<>])%s*([0-9%.]*)$")  if _ then text=_ end
	_,x,z,y = text:match("^(.-)%s*([%d%-%.]+)%s*,%s*([%d%-%.]+)%s*,%s*([%d%-%.]+)$")  if _ then text=_ end

	local oldContinent, oldInstance = text:match("^(%d+)%s+(%d+)")
	if oldContinent then -- we have some legacy style coordinates, 111 222 3333,4444,555
		mapId = prevmap or 0  --maybe
		mapName = "Some Zone"
		continentId = tonumber(oldContinent) -- but at least we can get continent data. OR NOT, if none was given.

		local mapWindow = ZGV.Frame:FindChild("HiddenZoneMapWindow")
		continentName = mapWindow and mapWindow:GetContinentInfo(oldContinent).strName
	elseif text~="" then -- new style of coordinates
		mapName = text  -- could be ID, too
		if tonumber(mapName) then
			mapName,mapId=nil,tonumber(mapName)
		end
	end

	if (mapId or mapName or prevmap) and mapId~=0 then
		mapId, mapName, continentId, continentName = ZGV.Lib:GetZone(mapName or mapId or prevmap)
	end

	mapId = tonumber(mapId)
	x = tonumber(x)
	z = tonumber(z)
	y = tonumber(y)
	dist=tonumber(dist)
	if dist and disttype==">" then dist=-dist end   -- distance written as <40 is usual; >40 = reverse distance check: "leave the area".

	return mapId,(mapName or ""),continentId,(continentName or ""), x,z,y, dist, err
end

function Parser.TestParseMapXYDist()
	-- QUICK UNIT TEST
	local function test(what,how)
		assert(what==how,tostring(what).." expected "..tostring(how))
	end
	local mapId,mapName,continentId,continentName,x,z,y,dist = ZGV.Parser.ParseMapXYDist("2 123,45,67 >50")
	test(mapId,2)  test(mapName,"Whitevale")  test(continentId,6)  test(continentName,"Alizar")  test(x,123)  test(z,45)  test(y,67)  test(dist,-50)
	local mapId,mapName,continentId,continentName,x,z,y,dist = ZGV.Parser.ParseMapXYDist("Whitevale 123,45,67")
	test(mapId,2)  test(mapName,"Whitevale")  test(continentId,6)  test(continentName,"Alizar")
	local mapId,mapName,continentId,continentName,x,z,y,dist = ZGV.Parser.ParseMapXYDist("2")
	test(mapId,2)  test(mapName,"Whitevale")  test(continentId,6)  test(continentName,"Alizar")  test(x,nil)
	local mapId,mapName,continentId,continentName,x,z,y,dist = ZGV.Parser.ParseMapXYDist("Whitevale")
	test(mapId,2)  test(mapName,"Whitevale")  test(continentId,6)  test(continentName,"Alizar")  test(x,nil)
	local mapId,mapName,continentId,continentName,x,z,y,dist = ZGV.Parser.ParseMapXYDist("123,45,67 <50",2)
	test(mapId,2)  test(mapName,"Whitevale")  test(continentId,6)  test(continentName,"Alizar")  test(x,123)  test(z,45)  test(y,67)  test(dist,50)
	local mapId,mapName,continentId,continentName,x,z,y,dist = ZGV.Parser.ParseMapXYDist("123,45,67")
	test(mapId,nil)  test(mapName,"")  test(continentId,nil)  test(continentName,"")  test(x,123)  test(z,45)  test(y,67)  test(dist,nil)

	return true
end

function Parser.ParseQuest(text)
	if not text then return end
	local quest,obj = text:match("^(.*)/(.*)$")
	if not obj then   quest=text  end

	local questtxt,questid = Parser.ParseId(quest)
	local objtxt,objnum = Parser.ParseId(obj)

	questid = tonumber(questid)
	objnum = tonumber(objnum)

	return questtxt,questid, objtxt,objnum

	-- stagetxt and steptxt should rarely occur, if at all, and definitely not combined.
	-- Support for those is kept just for consistency's sake.
end

-- Name##id
function Parser.ParseId(text)
	if not text then return end
	local name,id--,plural
	name,id = text:match("(.*)##([0-9]*)")
	if not name then id = text:match("^([0-9]*)$") end

	if id then id = tonumber(id) end

	if not (name or id) then name=text end
	return name, id
end

function Parser:ParseIncludes(text)
	local safety=0
	local split = SplitString

	-- do inclusion. Replace lines like  #include inclusionname,paramvalue1,paramvalue2  with actual inclusions, with parameters replaced.
	local function do_include(line)
		local orig_line = line
		local words,title,inclusion
		local params = {}

		line = line:gsub("\\,","##COMMA##") :gsub("\\\"","##QUOTE##")
		line = line:gsub('%s*//.-$',"")
		line = line:gsub('%s*%-%-.-$',"")

		words={split(",",line)}

		title = tremove(words,1)
		title = title:gsub("^%s*",""):gsub("%s*$","")
		title = title:gsub('^"(.-)"',"%1")

		for i,word in ipairs(words) do
			local param,val = word:match("(.-)%s*=%s*\"(.-)\"")
			if param then params[param]=val end
		end

		inclusion = ZGV.registered_includes[title]
		if not inclusion then self:Debug("#include '%s' not found in %s",title,guide.title) end

		return inclusion and inclusion:GetParsed(params) or ""
	end

	-- ParseIncludes Body
	while (text:find("#include")) do
		text = text:gsub("#include%s*(.-)%s-[\r\n]",do_include)
		safety=safety+1
		assert(safety<20,"#include recursion exceeded safety depth")
	end

	-- replace faux newlines
	text = text:gsub("||","\n")

	return text
end

--- parse ONE guide section into usable arrays.
function Parser:ParseEntry(guide,fully_parse,lastparsed)
	local text = guide.rawdata
	if not text then return nil,"No text!",0 end
	if not lastparsed then lastparsed={} end   -- eat and ignore any lastparsed stuff... too bad.
	lastparsed.linenum = -1
	lastparsed.linedata = "(none)"

	text = text .. "\n"

	guide.parsing_fully = fully_parse

	-------------------
	-- LOCAL VARIABLES
	-------------------
	local index = 1
	local linecount = 0
	local last5lines = {}
	local step
	local perror
	local breakout
	local prevmap
	local funclocdata = {}

	local do_debug	= 1

	-------------------
	-- LOCAL REFERENCES
	-------------------
	local strfind = string.find

	-------------------
	-- LOCAL FUNCTIONS
	-------------------
	local function parseerror(msg)
		local chunk = ""
		for i=1,#last5lines do chunk=chunk.."\n"..last5lines[i] end
		return nil,msg,linecount,(guide and guide.steps and #guide.steps or 0),chunk
	end

	-------------------
	-- TIME TO DO WORK
	-------------------

	-- clear some fields before reparsing
	guide.description=nil

	-- Pull out the includes since we are parsing fully
	if guide.parsing_fully  then
		guide.steps = guide.steps or {}

		text = self:ParseIncludes(text)
	end

	-- index starts at 1
	while (index<#text) do
		local indent
		local goal			-- DON'T initialize yet, we could be in a "step" line, and there's a pretty bunch of those.
		local chunkcount = 1
		local start,endd,line=strfind(text,"%s*(.-)%s*\n",index)
		if not endd then break end
		index = endd + 1		-- next start of line will be after this line.

		linecount=linecount+1
		if linecount>100000 then
			-- Something went wrong
			return nil,linecount,"More than 100000 lines!?"
		end

		lastparsed.linenum=linecount
		lastparsed.linedata=line

		-- remove comments of the form // or --
		line = line:gsub("%s*%-%-.*","",1) :gsub("%s*//.*","",1)

		-- extract indent, retrim. Indent is the number of periods.
		indent,line = line:match("^(%.*)%s*(.-)$")

		-- strip leading pipes, retrim
		line = line:gsub("^|%s*","")

		if do_debug then self:Debug("line %s: %s",linecount,line) end

		-- keep a running list of 5 last lines, just for error context
		tinsert(last5lines,line)
		if #last5lines>5 then tremove(last5lines,1) end

		-- cloak escaped pipes Then add a pipe for parsing
		line = line:gsub("\\|","%%PIPE%%")
		line = line .. "|"

	-- Process the line!
		-- it's supposedly left- and right-trimmed by the find above..
		for chunk in line:gmatch("%s*(.-)%s*|+") do if #chunk>0 then

			-- un-cloak escaped pipes
			chunk = chunk:gsub("%%PIPE%%","|")

			-- we have a trimmed chunk here
			-- spacify leading quotes only 1 space after a '
			chunk = chunk:gsub("^'%s*","' ")

			-- Get command and paramas n stuff
			local cmd,params = chunk:match("^([^%s]*)%s*(.-)$")
			params=params or ""

			if do_debug then self:Debug(": %s",chunk) end

			local cmd_parsed

			-- Eh no leechsteps for now
			-- THIS IS WRONG anyway, just one guide command handler has different returns?? what the heck?
			--[[
			if cmd=="leechsteps" then
				local cmdHandler = self:GetGuideCommandHandler(cmd)
				if cmdHandler then
					local okay, perror = cmdHandler(guide,params)
					if perror then return parseerror(perror) end		-- Handler gave us an error. abort abort
					break
				end
			end
			--]]


			-- guide parameters only found before the first step in a guide
			if not step then -- all-guide tags
				local cmdHandler = self:GetGuideCommandHandler(cmd)
				if cmdHandler then
					local okay, perror = cmdHandler(guide,params)
					if not okay then
						if perror=="SKIPLOAD" then  -- UNUSED
							return parseerror("SKIPLOAD")
						elseif perror then
							return parseerror(perror)
						end		-- Handler gave us an error. abort abort
					end
				end
			end

			-- new step line. Make a step then bail
			if cmd=="step" and (not step or #step.goals>0) then	-- If the previous step doesn't have goals then no reason to make another
				if not guide.parsing_fully then
					guide.steps=nil
					breakout = true
				end

				step = ZGV.StepProto:New()
				-- TODO add map and data stuff
				guide:AddStep(step)

				break -- We are done with this line. No reason to continue-- TODO this okay?
			end

		-- Inside a step. Handle the step and the goals
			if step then
				if do_debug then self:Debug("In Step cmd:== %s: [%s]",cmd,params) end

				local is_goal_cmd

				if cmd=="only" then  -- THIS IS A MESS.
					if goal or chunkcount>1 then is_goal_cmd=true end  -- "yes, this is a step command too, but IGNORE IT, handle it like a goal command"
				end

				local cmdHandler = self:GetStepCommandHandler(cmd)
				if cmdHandler and not is_goal_cmd then
					-- Step specifc command
					if do_debug then self:Debug("Step Handler found") end
					perror = cmdHandler(step,params)
					if perror then return parseerror(perror) end		-- Handler gave us an error. abort abort
				else
					-- Wasn't a custom step command. Time to make a goal!
					goal = goal or ZGV.GoalProto:New()

					if cmd == "'" then cmd = "text" end		-- Change the command so it can be found in the goaltypes

					cmdHandler = self:GetGoalCommandHandler(cmd)
					if cmdHandler then
						if goal.action == "text"	-- If we have the chance to overwrite the 'text' action then do it because there was something more important after it.
						and cmd~= "tip"						-- tip shouldn't overwrite a text action because it won't display the text then.
						and cmd~= "only"					-- Don't overwrite the goal's action to |only
						then
							goal.action = nil
						end
						goal.action = goal.action or cmd	-- prefer the first cmd for a goal

						if do_debug then self:Debug("Goal Handler found") end

						funclocdata.prevmap = prevmap
						funclocdata.chunkcount = chunkcount

						perror = cmdHandler(goal,params,step,funclocdata)
						if perror then return parseerror(perror) end	-- Shouldn't add the goal to step... But going to error anyhow.

						-- Used for finding map when only x,y is in guide
						step.map = goal.map or step.map
						prevmap = step.map or prevmap

					else
						ZGV:Debug(("Command : '%s' not supported"):format(cmd))
						-- ERROR?
					end


				end
			end
				chunkcount=chunkcount+1
				if chunkcount>20 then
					return nil,"More than 20 chunks in line",linecount,line
				end
		end end

		-- goal and it has stuff in it
		if goal and goal.action then
			if not step then return nil,"What? Unknown data before first 'step' tag, or what?",linecount,line end  -- shouldn't happen anymore!

			goal.indent = #indent

			step:AddGoal(goal)

				--if (goal.action=="get" or goal.action=="kill" or goal.action=="goal") and not goal.questid and not goal.objnum and not goal.criteriaid and not goal.achieveid and not goal.force_nocomplete then
				--	goal.force_nocomplete = true
				--end
		end

		if breakout then break end
	end

	guide.parsing_fully = nil

	return guide
end

-----------------------------------------
-- DEBUG
-----------------------------------------

function Parser:Debug(...)
	local str = ...
	ZGV:Debug("&parser "..str, select(2,...) )
end


-----------------------------------------
-- STARTUP
-----------------------------------------

tinsert(ZGV.startups,function(self)
	GOALTYPES = ZGV.GOALTYPES
end)
