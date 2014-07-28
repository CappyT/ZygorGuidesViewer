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
--local create,resume,status,yield = coroutine.create,coroutine.resume,coroutine.status,coroutine.yield
local print = ZGV.print
local CHAIN = ZGV.Utils.ChainCall
local ui = ZGV.UI
local L = ZGV.L
local split = function (div,text)
	local res={}
	repeat
		local pos = text:find(div)
		if pos then
			table.insert(res,text:sub(1,pos-1))
			text=text:sub(pos+1)
		end
	until not pos
	table.insert(res,text)
	return unpack(res)
end


-----------------------------------------
-- LOCAL VARIABLES
-----------------------------------------

local GoalProto = {}
local Goal = ZGV.Class:New("Goal")
local GoalProto_mt = { __index=Goal }
local GOALTYPES = {}
local empty_table={}

-- Parser functions
local ParseMapXYDist = ZGV.Parser.ParseMapXYDist
local MakeCondition = ZGV.Parser.MakeCondition
local ParseQuest = ZGV.Parser.ParseQuest
local ParseId = ZGV.Parser.ParseId

local INDENT = "  "

-----------------------------------------
-- SAVED REFERENCES
-----------------------------------------

ZGV.GoalProto = GoalProto
ZGV.GOALTYPES = GOALTYPES

-----------------------------------------
-- LOAD TIME SETUP
-----------------------------------------

setmetatable(GOALTYPES,{__index=function() return empty_table end})

-----------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------

local function COLOR_LOC(s)			return "<T TextColor=\"ffffee77\">"..tostring(s).."</T>" end
local function COLOR_COUNT(s)		return "<T TextColor=\"ffffffcc\">"..tostring(s).."</T>" end
local function COLOR_ITEM(s)		return "<T TextColor=\"ffaaeeff\">"..tostring(s).."</T>" end
local function COLOR_SKILL(s)		return "<T TextColor=\"ffaaeeff\">"..tostring(s).."</T>" end
local function COLOR_QUEST(s)		return "<T TextColor=\"ffeebbff\">"..tostring(s).."</T>" end
local function COLOR_NPC(s)			return "<T TextColor=\"ffaaffaa\">"..tostring(s).."</T>" end
local function COLOR_MONSTER(s) return "<T TextColor=\"ffffaaaa\">"..tostring(s).."</T>" end
local function COLOR_GOAL(s)		return "<T TextColor=\"ffffcccc\">"..tostring(s).."</T>" end
local function COLOR_BOLD(s)		return "<T TextColor=\"ffffee55\">"..tostring(s).."</T>" end
local function COLOR_TIP(s)			return "<T TextColor=\"ffeeeecc\">"..tostring(s).."</T>" end

local function GetMapByID(id) return "(map "..id..")" end

-----------------------------------------
-- GOALHANDLERS
-----------------------------------------
-- Pretty much Goal Types, but not exactly.

GOALTYPES['only'] = {  -- |only, |only if
	parse = function(self,params,step,data)
		local chunkcount = data.chunkcount
		
		local cond = params:match("^if%s+(.*)$")
		if cond then
			-- condition match and is a |only if
			local subject = chunkcount==1 and step or self	-- If this is the first chunk for this line, then it is a |only if for a step.

			local fun,err = MakeCondition(cond,true)
			if not fun then return err end

			subject.condition_visible_raw=cond
			subject.condition_visible=fun

			return false,"cancel goal"
		else
			params = params:gsub("%s*,%s*",",")
			if params:find(",") then
				self.requirement = {}
				for s in params:gmatch("([^,]+)") do
					table.insert(self.requirement,s)
				end
			else
				self.requirement = params
			end
		end
	end,
}

GOALTYPES['complete'] = {
	parse = function(self,params,step,data)
		--local chunkcount = data.chunkcount

		local cond = params:match("^if%s+(.*)$")
		if cond then
			-- condition match and is a |only if
			local subject = self	-- If this is the first chunk for this line, then it is a |only if for a step.

			local fun,err = MakeCondition(cond,true)
			if not fun then return err end

			subject.condition_complete_raw=cond
			subject.condition_complete=fun
		else
			ZGV:Error("||complete needs 'if'. because.")
			self.action = nil		-- rip in peace goal. wipe out because this is a command for steps.
		end
	end,
}

GOALTYPES['next'] = {
	parse = function(self,params,step,data)
		params = params:gsub("^\"(.-)\"$","%1")
		if params=="" then params="+1" end
		self.next=params
	end,
}

GOALTYPES['nextguide'] = {
	parse = function(self,params)
		self.always = (params == "always")
		self.optional = true
		self.clicked = false
		self.nextguide=params
		end,
	iscomplete = function(self)
		return self.clicked,true
	end,
	click = function(self)
		self.clicked = true	
	end,
}


GOALTYPES['sticky'] = {
	parse = function(self,params,step,data)
		self.sticky = true
	end,
}

GOALTYPES['n'] = {
	parse = function(self,params,step,data)
		self.force_nocomplete = true
	end,
}

GOALTYPES['c'] = {
	parse = function(self,params,step,data)
		self.force_complete = true
	end,
}

GOALTYPES['sub'] = {
	parse = function(self,params,step,data)
		self.subgoal = true  -- obsolete! do not use!
	end,
}

GOALTYPES['next'] = {
	parse = function(self,params,step,data)
		params = params:gsub("^\"(.-)\"$","%1")
		if params=="" then params="+1" end
		self.next=params
	end,
}

GOALTYPES['opt'] = {
	parse = function(self,params,step,data)
		self.optional = true
	end,
}

GOALTYPES['future'] = {
	parse = function(self,params,step,data)
		self.future = true
	end,
}

GOALTYPES['noway'] = {
	parse = function(self,params,step,data)
		self.force_noway = true
	end,
}

GOALTYPES['or'] = {
	parse = function(self,params,step,data)
		self.orlogic = params and tonumber(params) or 1
	end,
}

GOALTYPES['override'] = {
	parse = function(self,params,step,data)
		self.override = true
	end,
}

GOALTYPES['tip'] = {
	parse = function(self,params,step,data)
		self.tooltip = params
	end,
}

--[[
LOGIC:
		If a quest step is marked |sub then that means it isn't the primary objective of the quest, but it is needed as part of the quest
		and should be written in the guides. However there is not a way to detect it within the quest information reliable because there is a
		ton of additional noise in that information that is hard/impossible to know what is important.

		So rather than try to figure out what is important, just assume that the next queststep and conditionnum that is encountered after a |sub
		is what that |sub was leading up to. So after the next |q with all quest information is found, go backwards and fill in all the |sub with it's data.

--]]

GOALTYPES['q'] = {
	parse = function(self,params,step,data)
		self.	uest,self.questid, self.questobjtxt,self.questobjnum = ParseQuest(params)
		if not self.questid then return "no questid in parameter" end
	end,
	icon = "StepIcons:Step",
}

GOALTYPES['_item'] = {
	parse = function(self,params)
		local count,objinfo,objid
		local obj = ""

		-- 4 Itemname##id
		count,objinfo = params:match("^([0-9]*)%s*(.*)$")
		if not count then
			objinfo = params
		end

		local function parse(str)
				-- check for plural
				local name,plural = str:match("^(.+)(%+)$")
				if plural then
					str = name
				end

				local tar, tarid = ParseId(str)

				if plural and tar then
					tar = ZygorGuidesViewer_L("Specials").plural(tar)
				end

			return tar,tarid
		end

		self.count = tonumber(count) or 0

		local mult = {split(",",objinfo)}
		if #mult > 1 then
			local targets = {}
			self.targets = targets
			for i,info in ipairs(mult) do
				-- Name##Id are split, parse each individually and then put it in the targets table.

				local tar,tarid = parse(info)

				tinsert(targets,{tar,tarid})

				objid = objid or tarid	-- TODO only the first targetid is returned. This isn't an issue 3/1/14 but if we strip out english names then will have to use multiple ids to create the obj.

				if tar then
					obj = obj .. tar .. (i<#mult and ", " or "")	-- Append the target name to the obj, if not the last one then include a ,
				end
			end
		else
			obj, objid = parse(objinfo)
		end

		-- now object##id
		self.target,self.targetid = obj,objid

		-- something missing?
		if not self.targetid and not self.target then return "no parameter" end
	end
}

GOALTYPES['count'] = {
	parse = function(self,params)
		local args = {split("/",params)}
		if args[2] then
			self.count = math.floor(tonumber(args[1])/tonumber(args[2])*100)
		else
			self.count = tonumber(params)
		end
	end
}
-----------------------------------------
-- GOALTYPES
-----------------------------------------

--[[
	Functions in GoalTypes:
		parse = function(self,params,step,data)	-- Required
			-- sets up everything. No return
		iscomplete = function(self)
			-- return T/F
		iscompletable = function(self)
			-- Used if sometimes completable sometimes not.
			-- return T/F

	Extras

--]]

GOALTYPES['goto'] = {
	parse = function(self,params,step,data)
		local prevmap = data.prevmap
		local params2,title = params:match('^(.-)%s*"(.*)"')
		if title then params=params2 end

		local map, mapName, continent, continentName, x,z,y, dist, err = ParseMapXYDist(params, prevmap)
		if err then return err end

		self.map = (map or self.map or step.map or prevmap)
		if not self.map and not continent then
			return "no map parameter, neither has one been given before."
		end
		self.continent = continent or self.continent
		self.continentName= continentName or self.continentName
		self.mapName = mapName or self.mapName

		self.x = x or self.x
		self.z = z or self.z
		self.y = y or self.y
		self.dist = dist or self.dist or 5	-- 5 distance is default

		self.waytitle=title
	end,
	iscompletable = function(self)

		local step = self.parentStep
		local all_gotos=true

		for i,goal in ipairs(step.goals) do
			if goal.action~="goto"			-- A non-goto step or a goto step that is force_complete
			or goal.force_complete then
				all_gotos=false
				break
			end
		end

		return (self.force_complete or all_gotos)		-- If the goto has a |c then it is completable. Or if there are only gotos present in this step.
	end,
	iscomplete = function(self)
		if self.x then
			local dist = ZGV.Lib:GetDistanceTo(self.x,self.z,self.y) or 9999

			if self.dist and (
				 (self.dist>0 and dist < self.dist)
				or (self.dist<0 and dist > self.dist)
			) then
				return true,true
			end
		else
			local GCZM = GameLib.GetCurrentZoneMap()
			local curZone = GCZM.parentZoneId  if curZone==0 then curZone = GCZM.id end
			return self.map == curZone , true
		end
		return false,true
	end,
	icon = "StepIcons:SubStep"
}

GOALTYPES['collect'] = {
	parse = GOALTYPES['_item'].parse,
	--iscomplete = function(self)	end,
}

GOALTYPES['get'] = GOALTYPES['collect']
GOALTYPES['buy'] = GOALTYPES['collect']
GOALTYPES['gather'] = GOALTYPES['collect']

GOALTYPES['kill'] = {
	parse = GOALTYPES['_item'].parse,
	icon = "StepIcons:Kill",
	--iscomplete = function(self)	end,
}

GOALTYPES['wayshrine'] = {
	parse = function(self,params,step,data)
		self.wayshrine = params
	end,
	iscomplete = function(self)
		local zoneid = (ZGV.Pointer.Zones[self.parentStep.map or ""] and ZGV.Pointer.Zones[self.parentStep.map or ""].id) or GetCurrentMapZoneIndex()
		if not zoneid then return end

		if not self.wayshrinePOIIndex then
			local found
			for i=1,GetNumPOIs(zoneid) do
				if IsPOIWayshrine(zoneid,i) then
					local text,num,subtextinc,subtextcom = GetPOIInfo(zoneid,i)

					found = zo_plainstrfind(text,self.wayshrine)

					if found then
						self.wayshrinePOIIndex = i
						break
					end
				end
			end

			-- Index wasn't found... okay well we don't want to spam looking through POI's because it isn't efficient. Assign the index to 0 which returns an empty POI (no match) then reset it every 10s to try to match again.
			if not found then
				ZGV:Debug("Wayshrine index not found for %s...", self.wayshrine)
				self.wayshrinePOIIndex = 0
				ZGV:ScheduleTimer(function() self.wayshrinePOIIndex = nil end, 10)
			end
		end

		local x,y,typ,tex = GetPOIMapInfo(zoneid,self.wayshrinePOIIndex,true) --truthful call! don't be fooled by our own Pointer.lua and its foglight

		if typ == MAP_PIN_TYPE_POI_COMPLETE then
			return true,true
		else
			--"/esoui/art/icons/poi/poi_wayshrine_incomplete.dds"
			return false,self.wayshrinePOIIndex>0
		end

	end,
}

GOALTYPES['learnskill'] = {
	parse = function(self,params,step,data)
		self.skillname = params
	end,
	--iscomplete = function(self)	end,
}

GOALTYPES['click'] = {
	parse = GOALTYPES['_item'].parse,
	icon = "StepIcons:SubStep",
}

GOALTYPES['accept'] = {
	parse = function(self,params,step,data)
		if not params then return "no quest parameter" end
		self.quest,self.questid = ParseId(params)

		if not self.quest and not self.questid then return "no quest parameter" end

		--if self.questid then
		--	ZGV.mentionedQuests[self.questid] = 1
		--end
	end,
	iscomplete = function(self)
		local status = ZGV.Lib:GetQuestStatus(self.questid)
		return (status==Quest.QuestState_Accepted
			or status==Quest.QuestState_Completed
			or status==Quest.QuestState_Achieved), true
	end,
	icon = "StepIcons:Quest",
--	click = function(self)
--		Print("I got clicked")
--	end,
}

GOALTYPES['turnin'] = {
	parse = GOALTYPES['accept'].parse,
	iscomplete = function(self)
		local status = ZGV.Lib:GetQuestStatus(self.questid)
		return status==Quest.QuestState_Completed , status==Quest.QuestState_Achieved
	end,
	icon = "StepIcons:TurnIn",
}

GOALTYPES['talk'] = {
	parse = function(self,params,step,data)
		self.npc,self.npcid = ParseId(params)
		if not self.npc and not self.npcid then return "no npc" end
	end,
	icon = "StepIcons:TalkTo",
}

GOALTYPES['equip'] = {
	parse = GOALTYPES['_item'].parse,
	--iscomplete = function(self)	end,
}

GOALTYPES['use'] = {
	parse = GOALTYPES['_item'].parse,
	--iscomplete = function(self)	end,
	icon = "StepIcons:Loot",
	click = function(self)
		local inv = Apollo.GetAddon("Inventory")
		if not inv.wndMain:IsVisible() then
			ShowInventory() -- carbine system call
			-- Apollo.GetAddon("Inventory").wndMain:FindChild("BGGridArt"):FindChild("MainGridContainer"):FindChild("MainBagWindow")
		end
	end,
}



GOALTYPES['confirm'] = {
	parse = function(self,params)
		self.always = (params == "always")
		self.optional = true
		self.clicked = false
		end,
	iscomplete = function(self)
		return self.clicked,true
	end,
	click = function(self)
		self.clicked = true	
	end,
}

GOALTYPES['lorebook'] = {
	parse = function(self,params,step,data)
		if not params then return "no lorebook parameter" end
		local name,cat,col,book = params:match("^(.-)(%d+)/(%d+)/(%d+)$")
		self.lorebook_cat=tonumber(cat)  self.lorebook_col=tonumber(col)  self.lorebook_book=tonumber(book)
		
		if not self.lorebook_book then return "no lorebook cat/col/book parameter" end

		--if self.questid then
		--	ZGV.mentionedQuests[self.questid] = 1
		--end
	end,
	iscomplete = function(self)
		local title,icon,known = GetLoreBookInfo(self.lorebook_cat,self.lorebook_col,self.lorebook_book)
		return known , true
	end,
	gettext = function(self)
		local title = GetLoreBookInfo(self.lorebook_cat,self.lorebook_col,self.lorebook_book)
		return L['stepgoal_lorebook']:format(title)
	end
}

GOALTYPES['achieve'] = {
	parse = function(self,params,step,data)
		if not params then return "no achieve parameter" end
		self.achieve_id,self.achieve_crit = params:match("(%d+)/(%d+)$")
		if not self.achieve_crit then
			self.achieve_id = params:match("(%d+)$")
		end
		self.achieve_id = tonumber(self.achieve_id)
		self.achieve_crit = tonumber(self.achieve_crit)
		if not self.achieve_id then return "no achieve id" end

		--if self.questid then
		--	ZGV.mentionedQuests[self.questid] = 1
		--end
	end,
	iscomplete = function(self,override_achieve_id,override_achieve_crit)
		local name,desc,points,icon,isCompleted,date,time = GetAchievementInfo(override_achieve_id or self.achieve_id)
		if isCompleted or not (override_achieve_crit or self.achieve_crit) then
			return isCompleted , true
		else
			local desc,numcom,numreq = GetAchievementCriterion(override_achieve_id or self.achieve_id,override_achieve_crit or self.achieve_crit)
			return numcom==numreq , true , (numcom/zo_max(1,(numreq or 1)))
		end
	end,
	gettext = function(self)
		local name
		if not self.achieve_crit then name = GetAchievementInfo(self.achieve_id)
		else name = GetAchievementCriterion(self.achieve_id,self.achieve_crit) end
		return L['stepgoal_achieve']:format(name)
	end
}

GOALTYPES['ding'] = {
	parse = function(self,params)
		self.dinglevel = tonumber(params)
	end,
	iscomplete = function(self)
		return ZGV.Utils.GetPlayerPreciseLevel()>=self.dinglevel,true
	end,
}

GOALTYPES['text'] = {
	parse = function(self,params)
		-- highlight _text_
		params = params:gsub("_(.-)_","<T TextColor=\"ffffee88\">%1</T>")
		self.text = params
	end,
}


-----------------------------------------
-- GUIDEPROTO FUNCTIONS
-----------------------------------------

function GoalProto:New()
	local goal = {}

	setmetatable(goal,GoalProto_mt)
	return goal
end


-----------------------------------------
-- GOAL CLASS FUNCTIONS
-----------------------------------------

function Goal:GetQuest()
	if not self.questid then return end
	return ZGV.Lib:GetQuest(self.questid)
end

function Goal:GetQuestGoalStatus()
	if not self.questid then return false,false,"no quest id" end
	if not self.questobjnum then return false,false,"no quest obj num" end
	
	local quest = ZGV.Lib.knownQuests[self.questid]
	if not quest then return false,false,"no quest ".. self.questid end

	local comp=quest:GetObjectiveCompleted(self.questobjnum-1)  -- ZERO-BASED!
	local need=quest:GetObjectiveNeeded(self.questobjnum-1)  -- ZERO-BASED!

	return comp>=need,need>0,"completion",comp,need
	-- complete,possible,expl,curv,maxv,expl2
end

function Goal:DebugQuest()
	if not self.questid then return "no quest id" end
	local ret={}

	ret._1_quest = ZGV.Lib.knownQuests[self.questid]
	if not ret._1_quest then return "no quest "..self.questid end
	
	if self.questobjnum then
		ret._2_obj_desc = ret._1_quest:GetObjectiveShortDescription(self.questobjnum-1)  -- ZERO-BASED!
		ret._3_obj_completed = ret._1_quest:GetObjectiveCompleted(self.questobjnum-1)  -- ZERO-BASED!
		ret._4_obj_needed = ret._1_quest:GetObjectiveNeeded(self.questobjnum-1)  -- ZERO-BASED!
		ret._5_obj_status_in_lib = {ZGV.Lib:GetObjectiveStatus(self.questid,self.questobjnum-1)}  -- ZERO-BASED!
	end
	return ret
end

function Goal:GetQuestGoalCounts()
	local complete,   possible, expl, curv, maxv,expl2 = self:GetQuestGoalStatus()
--	      comp>=need, need>0,  "bla", comp, need
	if expl~="completion" then return end
	if not curv then return end

	local goalcountnow,goalcountneeded,remaining

	goalcountnow = curv or 0
	goalcountneeded = min(self.count or 9999,maxv or 9999)	-- If limit is < maxvalue then prefer that to allow guide to dictate only collecting a certain number in a single area.
	remaining = goalcountneeded-goalcountnow

	if remaining<=0 then remaining=goalcountneeded end
	if goalcountneeded == 1 then remaining = nil end		-- If we only need 1 then don't need to explictly show a number. Nil this out to not show a num

--	return comp>=need,need>0,"completion",comp,need
	return goalcountnow,goalcountneeded,remaining , goalcountnow>=goalcountneeded, math.floor(goalcountnow/goalcountneeded*100)
end

function Goal:GetText()
	local GOALTYPE=GOALTYPES[self.action]
	local text = "?"
	local progtext
	local _done
	local complete,ext
	local goalcountnow,goalcountneeded,remaining
	local base, data

	if self.questid then	-- Is there a quest to go with this step?
		goalcountnow,goalcountneeded,remaining = self:GetQuestGoalCounts()
	end

	complete,ext = self:IsComplete()

	_done = complete and "_done" or ""

	if self.text then		--TODO expand on this if straight self.text doesn't cut it. And what is it doing?
									--~~ This handles {scriptable text entries} in goal texts.
		local nsub=1
		-- Generates a parser proc with said behaviour, to evade calling loadstring too much
		local function make_parser(parser) -- function to generate code
			return function(s)
				if not self.textsubs then self.textsubs={} end
				local f = self.textsubs[nsub]
				if not f then
					f=parser(s)
					self.textsubs[nsub]=f
				end
				nsub=nsub+1
				if type(f)=="function" then
					ZGV.Parser.ConditionEnv._SetLocal(self.parentStep.parentGuide,self.parentStep,self)
					return tostring(f())
				else
					return tostring(f)
				end
			end
		end

		local function parser_simple(s)
			local fun,err = zo_loadstring(s:find("return") and s or "return "..s)
			if fun then
				setfenv(fun,ZGV.Parser.ConditionEnv)
				return fun
			else
				return "("..err..")"
			end
		end

		local function parser_ternary(s)
			local condcode,a,b=s:match("(.*)%?%?(.*)::(.*)")
			if condcode and a and b then
				local condfun,err = zo_loadstring(condcode:find("return") and condcode or "return "..condcode)
				if condfun then
					local fun = function() -- Generating a real worker function
						return condfun() and a or b
					end
					setfenv(fun,ZGV.Parser.ConditionEnv)
					return fun
				else
					return "("..err..")"
				end
			else
				return "(Wrong conditional syntax)"
			end
		end
		
		-- TODO support nesting of conditionals
		text = self.text
			:gsub("{([^}]-%?%?[^}]-::[^}]-)}",make_parser(parser_ternary))
			:gsub("{(.-)}",make_parser(parser_simple))
			:gsub("#(%d+)#",COLOR_COUNT(remaining))

	elseif self.action=="tip" then
		text = self.tooltip

	elseif self.action=="accept" then
		base = L["stepgoal_accept".._done]
		data = COLOR_QUEST(L["questtitle"]:format(self.quest or "?quest?"))

	elseif self.action=="turnin" then
		base = L["stepgoal_turnin".._done]
		data = COLOR_QUEST(L["questtitle"]:format(self.quest or "?quest?"))

	elseif self.action=="talk" then
		base = L["stepgoal_talk".._done]
		data = COLOR_NPC(self.npc)

	elseif self.action=="kill" then
		base = L["stepgoal_kill".._done]
		data = COLOR_NPC(self.target)

	elseif self.action=="equip" then
		base = L["stepgoal_equip".._done]
		data = COLOR_NPC(self.target)

	elseif self.action=="use" then
		base = L["stepgoal_use".._done]
		data = COLOR_NPC(self.target)
		
		
	elseif self.action=="collect" then
		base = L["stepgoal_collect".._done]
		data = COLOR_NPC(self.target)

	elseif self.action=="buy" then
		base = L["stepgoal_buy".._done]
		data = COLOR_NPC(self.target)

	elseif self.action=="gather" then
		base = L["stepgoal_gather".._done]
		data = COLOR_NPC(self.target)

	elseif self.action=="learnskill" then
		base = L["stepgoal_learnskill".._done]
		data = COLOR_NPC(self.target)

	elseif self.action=="confirm" then
		text = L["stepgoal_confirm"]

	elseif self.action=="click" then
		base = L["stepgoal_click".._done]
		data = COLOR_ITEM(self.target)

	elseif self.action=="wayshrine" then
		base = L["stepgoal_wayshrine".._done]
		data = COLOR_NPC(self.wayshrine)

	elseif self.action=="goto" then
		--local curZone = GetMapName()
		--local mapname = ZGV.Pointer.Zones[self.map] and ZGV.Pointer.Zones[self.map].name or self.map or curZone.."(?)"

		local GCZM = GameLib.GetCurrentZoneMap()
		local curZone = GCZM.parentZoneId  if curZone==0 then curZone = GCZM.id end
		local curContinent = GCZM.continentId
		local mapName= self.mapName
		local displayContinent = ""
		
		if curContinent ~= self.continent then
			displayContinent = self.continentName.." - "
		end 
				
		if self.map~=curZone then
			-- different map
			if self.x and self.z then
				-- and coords
				text = COLOR_LOC(displayContinent..L['map_coords']:format(mapName,self.x,self.z))
			else
				-- just the map
				text = COLOR_LOC(displayContinent..mapName)
			end
		else
			if self.x and self.z then
				-- same map
				text = COLOR_LOC(L['coords']:format(self.x,self.z))
			else
				-- just the map
				text = COLOR_LOC(displayContinent..mapName)
			end
		end
		if self.waytitle then
			text = self.waytitle.." ("..text..")"
		end
		text = ( L["stepgoal_goto"]):format( text )
	end

	if base and data then
		if remaining or (self.count and self.count > 1)
		then
			-- Shoot better attach a number to this!
			base = base.." %s"

			text = base:format(remaining or self.count or "???",data)
		else
			text = base:format(data)
		end
	end

	if text=="?" and GOALTYPE.gettext then
		text = GOALTYPE.gettext(self)
	end

	if text=="?" and L["stepgoal_"..self.action] then  -- fallback: just plain text in L
		text = L["stepgoal_"..self.action]
	end


	--[[
	-- trickiness: coordinates. Add (x,y) when needed
	if self.x and self.y -- if there's a coordinate
	and not (self.action=="goto" or self.action=="fly") -- but it's not a plain goto   --and not self.text
	and not (self.text and self.text:find("[0-9%.]-,[0-9%.]-")) -- and it's not a coord-in-text
	and not self.force_noway then
		text = text .. L['stepgoal_at_suff']:format(COLOR_LOC(L['coords']:format(self.x*100,self.y*100)))
	end
	--]]


	-- Add the indent!
	local indent = INDENT:rep(self.indent or 0)
	text = text and indent..text

	-- apply the (2/4) totals now, or not
	if goalcountnow and goalcountneeded and goalcountneeded>1 then
		progtext=L["completion_goal"]:format(goalcountnow)
	end

	if progtext then

		if complete then	progtext = " " .. progtext
		elseif ext then		progtext = " <T TextColor=\"ffffbbbb\">"..progtext.."</T>"
		else		progtext = " <T TextColor=\"ffaaaaaa\">"..progtext.."</T>"
		end

		text = text .. progtext
	end

	return text
end

function Goal:tostring()
	return self:GetText()
end

function Goal:GetTipText()
	if not self.tooltip then return end

	local indent = INDENT:rep(self.indent or 0)

	local text = indent..COLOR_TIP(self.tooltip)

	return text
end

function Goal:GetIcon()
	local icon = GOALTYPES[self.action].icon
	if not icon then return end
	return icon 
end


function Goal:IsVisible()
--	if not self:IsFitting() then return false end
	if self.hidden then return false end
	if self.condition_visible then
		if self.condition_visible_raw=="default" then
			-- oo, special case: show this only if no others are visible!
			for i,goal in ipairs(self.parentStep.goals) do
				if goal~=self and goal.condition_visible and goal:IsVisible() then return false end
			end
			return true
		else
			ZGV.Parser.ConditionEnv._SetLocal(self.parentStep.parentGuide,self.parentStep,self)
			local ok,ret = pcall(self.condition_visible)
			if ok then return ret else ZGV:Error("Error in step %s, goal %s, only if %s: %s", self.parentStep.num, self.num, self.condition_visible_raw or "", ret:gsub("\n.*","")) end
		end
	end
	if self.requirement then
		return ZGV.Utils:RaceClassMatch(self.requirement)
	end
	return true
end

-- returns: true = complete, false = incomplete
-- second return: true = completable, false = incompletable
function Goal:IsComplete()
	-- is now a wrapper for sticky reasons.
	if self.sticky_complete then return true,true end
	local iscomplete,ispossible,v1,v2,v3 = self:IsCompleteCheck()
	if iscomplete and self.sticky then self.sticky_complete=true end
	if self:IsCompletable() then
		if iscomplete and not self.was_complete then
			self:OnComplete()
		elseif not iscomplete and self.was_complete then
			self:OnDiscomplete()
		end
		self.was_complete=iscomplete
	end

	--TODO 
	if self.map then self:CheckVisited() end  -- TODO: this is a bad place to call other checks.	
	
	return iscomplete,ispossible,v1,v2,v3
end

function Goal:OnComplete()
	if self.parentStep.current_waypoint_goal == self.num then 
		ZGV.Pointer:CycleWaypoint(1,"no cycle")
	end
end

function Goal:OnDiscomplete()
end

function Goal:CheckVisited()
	if self.map then
		if self.status=="incomplete" then return end

		local isvisited = GOALTYPES['goto'].iscomplete(self)  -- "test as if it's a goto step"
		if isvisited and not self.was_visited then
			self:OnVisited()
		elseif not isvisited and self.was_visited then
			self:OnDevisited()
		end
		self.was_visited=isvisited
	end
end

function Goal:OnVisited()
	self.parentStep.current_waypoint_goal = self.num
	ZGV.Pointer:CycleWaypoint(1,"no cycle")
end

function Goal:OnDevisited()
end

function Goal:IsCompleteCheck()
	-- If the quest is complete then all related goals are complete.
	local iscomplete,ispossible,explanation,curv,maxv,debugs,progress

	if self.condition_complete then
		ZGV.Parser.ConditionEnv._SetLocal(self.parentStep.parentGuide, self.parentStep, self)
		local ok,iscomplete = pcall(self.condition_complete)
		if ok then
			if iscomplete then
				return true,true,nil,"condition complete"
			else
				-- fall through!
			end
		else
			ZGV:Error("Error in step %s, goal %s, complete if %s: %s", self.parentStep.num, self.num, self.condition_complete_raw or "", iscomplete:gsub("\n.*",""))
		end
	end

	if self.questid and self.action~="accept" and self.action~="turnin" then  -- let accept goals complete on their own
	repeat
		local qstatus = ZGV.Lib:GetQuestStatus(self.questid)

		if qstatus==Quest.QuestState_Unknown then -- we do not know this quest. are we from future?
			if self.future then
				return false, true, nil,"quest state unknown"
			end
		end
		if qstatus==Quest.QuestState_Completed then return true,true,nil,"quest completed" end
		if qstatus==Quest.QuestState_Achieved then
			if self.questobjnum then 
				return true,true,nil,"quest achieved" -- ready to turn in
			else
				break
			end
		end
		if qstatus~=Quest.QuestState_Accepted then return false,false,nil,"quest not accepted" end
		
		-- only if Accepted - check goals.
					
		--ZGV.Lib:GetKnownQuests()
		if self.questobjnum then
			local quest = ZGV.Lib.knownQuests[self.questid]		
			if not quest then return false,false,nil,"quest not known?" end

			local _,_,_,objComplete,percent = self:GetQuestGoalCounts()
			
			if objComplete then
				return objComplete, true, percent/100, "objective complete"
			else 
				iscomplete, ispossible = false, true
				break
			end
		else
			break -- whatever you are, let the goal completion handle you, out of the "loop" with you
		end
	until true
	end

	if self.achieve_id then
		iscomplete,ispossible = GOALTYPES['achieve'].iscomplete(self)
		if iscomplete then return true,true end
	end
	
	if self.lorebook_book then  -- it's lore-based, then?
		iscomplete,ispossible = GOALTYPES['lorebook'].iscomplete(self)
		if iscomplete then return true,true end
	end
	
	-- Not quest related (or fell through) so time to resort to GOALTYPES
	-- Use the individual goal completion routine

	--if not self:IsCompletable() then return false,false end
	local giscomplete,gispossible,gprogress,gdesc

	local GOALTYPE = GOALTYPES[self.action]
	if GOALTYPE and GOALTYPE.iscomplete then
		giscomplete,gispossible,gprogress,gdesc = GOALTYPE.iscomplete(self)
		gdesc = gdesc or "fallback to "..self.action
	end

	return giscomplete or iscomplete,gispossible or ispossible, gprogress or progress,gdesc or "final fallback"
end

function Goal:IsPeripheral()
	if self.questid and not self.questobjnum then
		return true
	else
		return false
	end
end


function Goal:IsCompletable(by_type)
	local GOALTYPE=GOALTYPES[self.action]	-- All goals have goaltypes

	if self.force_nocomplete then return false end	-- the almighty |n
	if self.condition_complete then return true end  -- we have a script, so obey

	if not by_type and self.action~="goto" then
		if self.questid or self.lorebook or self.achieve_id then 
			return true 
		end	-- there is a quest/lore/achieve associated with this goal so can be completed. Unless it's a goto. These are only completed by |c.
	end
	if GOALTYPE.iscompletable then return GOALTYPE.iscompletable(self) end		-- This may or maynot be there if it is only sometimes completable.
	if --[[exists--]] GOALTYPE.iscomplete then return true end	-- There is a way to complete this goal
	-- Nothing above? Okay can't complete.
	return false
end

function Goal:UpdateStatus()
	self.status = self:GetStatus()

	return self.status
end

function Goal:GetStatus()

	--[[
	-- POINT ARROW TO QUEST COORDS
	if self.action=="goto" and self.questid and self.queststepnum and self.questcondnum then
		local quest = ZGV.Quests[self.questid]
		if quest then
			if self.queststagenum==quest:GetCurrentStageNum() then
				--if self.queststepnum>1 then step=step.substeps and step.substeps[request.stepnum-1] end
				local cond = quest.steps[self.queststepnum].conditions[self.questcondnum]
				if cond and cond.x and cond.x~=self.x then
					self.x,self.y=cond.x,cond.y
					self.m=ZGV.Pointer:GetMapTex()
					ZGV:SetWaypoint()  -- update, really
				end
			end
		end
	end
	--]]

	if not self:IsVisible() then return "hidden" end
	if not self:IsCompletable() then return "passive" end
	local iscomplete,ispossible,progress,warn = self:IsComplete()
	if iscomplete then return "complete" end
	-- FIRST impossible (gray), THEN obsolete (blue).
	--if warn then return "warning" end
	--if not possible then return "impossible" end

	return "incomplete",progress
end


-----------------------------------------
-- DEBUG
-----------------------------------------

function GoalProto:Debug(...)
	local str = ...
	ZGV:Debug("&goal "..str, select(2,...) )
end
