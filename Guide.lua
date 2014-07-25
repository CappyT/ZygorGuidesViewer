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
local L = ZGV.L
local Utils = ZGV.Utils

-----------------------------------------
-- LOCAL VARIABLES
-----------------------------------------

local GuideProto = {}
local Guide = ZGV.Class:New("Guide")
local Guide_mt = { __index=Guide }


-----------------------------------------
-- SAVED REFERENCES
-----------------------------------------

ZGV.GuideProto = GuideProto

-----------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------

local function coroutine_safe_pcall(f,arg)
	local co = create(f)
	while true do
		local state, a,b,c,d,e = resume(co,arg)
		if status(co) == "suspended" then
			arg = yield(a)   -- suspend across `mypcall'
		else
			return status, a,b,c,d,e   -- error or normal return
		end
	end
end

-----------------------------------------
-- GUIDEPROTO FUNCTIONS
-----------------------------------------

function GuideProto:New(title,data,extra)
	local path,tit = title:match("^(.*)\\+(.-)$")
	if not path then return end
	local guidetype = path:match("^(.-)\\") or path

	local guide = {
		title=title,
		title_short=tit or title,
		rawdata=data,
		extra=extra,
		num=#ZGV.registeredguides+1,
		parsed=nil,
		fully_parsed=nil,
		type=guidetype
	}

	guide.completionmode = guide.completionmode
		or (guide.type=="LEVELING" and "level")
		or "steps"

	setmetatable(guide,Guide_mt)

	return guide
end

-----------------------------------------
-- GUIDE CLASS FUNCTIONS
-----------------------------------------

function Guide:Parse(fully)
	if not self.rawdata or (self.parsed and self.fully_parsed) then return end

	if self.parse_failed then return end

	if fully then GuideProto:Debug("Parsing guide: "..self.title) end

	local lastparsed = {linenum=-2,linedata="-?-"}
	--local success,parsed,err,line,stepnum,linedata = coroutine_safe_pcall(function() return ZGV.Parser:ParseEntry(self,fully,lastparsed) end)
	local success,parsed,err,line,stepnum,linedata = pcall(ZGV.Parser.ParseEntry,ZGV.Parser,self,fully,lastparsed)

	if false and ZGV.sv.profile.ignoreErrors then	-- Allow loading still, but make sure the message gets spat out. --TODO
		if not parsed then
			if err then
				ZGV:Error(L["message_errorloading_full"],self.title,line or 0,stepnum or "?",linedata or "???",err)
			else
				ZGV:Error(L["message_errorloading_brief"],self.title)
			end
		end

		parsed = true
	end

	if not success then
		local err = parsed

		ZGV:Error(L["message_errorloading_critical"] , self.title or "no title?",err or "no err?",lastparsed.linenum or "-1",lastparsed.linedata or "-1")
		self.parse_failed = true
		return nil

	elseif not parsed then
		if err then
			ZGV:Error(L["message_errorloading_full"],self.title,line or 0,stepnum or "?",linedata or "???",err)
		else
			ZGV:Error(L["message_errorloading_brief"],self.title)
		end
		self.parse_failed = true
		return nil

	else
		self.parsed = true

		if self.steps and (#self.steps>0) then
			self.fully_parsed = true

			-- cap it with a finisher step
			local step = ZGV.StepProto:New()
			step.finish = true
			local goal = ZGV.GoalProto:New()
			goal.action = "confirm"
			goal.text = "This guide is now complete."

			step:AddGoal(goal)
			self:AddStep(step)
		end

		self.steplabels={}
		for si,step in ipairs(self.steps) do
			local label=step.label
			if label then
				if not self.steplabels[label] then self.steplabels[label]={} end
				tinsert(self.steplabels[label],si)
			end
		end
	end
end


function Guide:DoCond(which,...)
	local player = GameLib.GetPlayerUnit()
	if not player then return false,"ERROR: No player unit found" end

	if which=="valid" and not self.condition_valid then
		if self.extra.startlevel then
			return player:GetLevel() >= self.extra.startlevel 
		end
		return true
	end

	if which=="suggested" and not self.condition_suggested and self.extra.startlevel then
		return player:GetLevel() >= self.extra.startlevel 
	end
	if which=="end" and not self.condition_end and self.extra.endlevel then
		return player:GetLevel() >= self.extra.endlevel 
	end
	if which and self['condition_'..which] then
		local isOK,err = pcall(self['condition_'..which],self,...)
		if isOK then
			return err,self['condition_'..which..'_msg']
		else
			ZGV:Debug("ERROR parsing condition for guide:\n"..self.title.."\n"..self['condition_'..which.."_raw"].."\nError: "..err)
			return false,"ERROR: "..(self['condition_'..which..'_msg'] or "")
		end
	end
end

function Guide:GetStatus()
	local ret,msg

	ret,msg = self:DoCond("invalid")
	if ret then return "invalid",msg end

	ret,msg = self:DoCond("valid")
	if ret then
		ret,msg = self:DoCond("end")
		if ret then return "obsolete",msg end
		msg="" -- TODO it's a bug, we ask the end condition and we're reusing its value even if the guide isnt complete

		ret,msg = self:DoCond("suggested")
		if ret then return "suggested" end

		return "valid",msg
	else
		return "invalid",msg
	end
end

function Guide:Load(step)
	ZGV:SetGuide(self,step)
end

function Guide:Unload()		-- TODO allow unloading of guides. It so few guides atm don't need to save on memory
	--self.steps=nil
	--self.fully_parsed=nil
	--collectgarbage("step",100)
end

function Guide:SetAsCurrent()
	ZGV.CurrentGuide = self
	ZGV.CurrentGuideName = self.title
	ZGV.sv.char.guidename = self.title

	-- Clear this stuff because it gets set after
	ZGV.CurrentStep = nil
	ZGV.CurrentStepNum = nil
end

function Guide:GetCurStep()
	return self:GetStep(ZGV.CurrentStepNum)
end

function Guide:GetStep(num)
	if not num then return end
	return self.steps[num]
end

function Guide:AddStep(step)
	-- TODO type(step)~=Step

	step.parentGuide = self
	step.num = #self.steps+1

	tinsert(self.steps,step)
end

--TODO make sure this isn't redundant a bit inside
function Guide:GetFirstValidStep(start)
	if not self.fully_parsed then return end
	start=start or 1
	local startstep = self:GetStep(start)
	if start~=1 and not startstep then return self:GetFirstValidStep(1) end
	assert(startstep,"GetFirstValidStep: no starting step at 1?? what the hell??")

	-- starting step is good?
	if startstep:AreRequirementsMet() then return startstep end

	-- no? let's go forward...
	local nextvalid = startstep:GetNextValidStep()
	if nextvalid then return nextvalid end

	if start~=1 then return self:GetFirstValidStep(1) end  -- restart at 1, maybe that helps

	return self.steps[1]  -- always returns something, or breaks.
end

function Guide:GetCompletion(mode)
	mode = mode or self.completionmode

	if self.parse_failed then return "error","parsing failed" end

	if mode=="steps" then
		-- request full parsing for those
		if not self.fully_parsed then
			--self.need_to_parse=true
			ZGV:Debug("Guide:GetCompletion : '"..self.title.."' needs parsing for completion type '"..mode.."'")
			return "loading"
		end
	end

	if mode=="none" then
		return "none"
	elseif mode=="level" then
		if not self.startlevel or not self.endlevel then return "error","no starting/ending level set" end
		return min(1,max(0,(Utils.GetPlayerPreciseLevel()-self.startlevel)/(self.endlevel-self.startlevel)))
	elseif mode=="steps" then
		local count,comp = 0,0
		local prevStepComp = true	-- Start as true, there is no previous step to the first step.
		local curStepComp = self.steps[1]:IsComplete(1)
		local nextStepComp

		for si=1, #self.steps do
			local step = self.steps[si]
			local nextstep = self.steps[si+1]

			if not nextstep then -- If no next step just true it.
				nextStepComp = true
			else
				nextStepComp = nextstep:IsComplete(1)
			end

			if step:AreRequirementsMet()	-- Valid step?
			and not step.finish						-- Not last step
			then
				count=count+1

				if curStepComp then		-- If this step is complete, easy
					comp=comp+1
				elseif (prevStepComp and nextStepComp) then -- If the steps on both sides of this step are complete, lets say this step is complete. Rough, but for progress bar.
					comp=comp+1
				end
			end

			-- going to next step, adjust variables.
			prevStepComp = curStepComp
			curStepComp = nextStepComp
		end

		return count>0 and comp/count or 0, comp,count
	end
	-- other completions might not need a full parse.
	return "error","we don't know if this guide completes or not"
end

-- Returns percentage in text form #%, a description, and a numeric percent for easy of use.
function Guide:GetCompletionText(mode)
	mode = mode or self.completionmode
	local comp,a,b,c,d = self:GetCompletion(mode)
	assert(comp) -- Sanity!
	if comp=="loading" then return "...","(loading)", 0 end
	if comp=="error" or type(comp)~="number" then return "?",("(an error occurred: %s)"):format(a or "black magic"), 0 end

	comp = floor(comp*100)

	if mode == "none" then
		return "-", "This guide does not complete.", comp
	elseif mode == "level" then
		return comp.."%", ("Level %2d reached: %d%%"):format(self.endlevel,comp), comp
	elseif  mode == "steps" then
		return comp.."%", ("Steps completed: %d/%d"):format(a,b), comp
	else
		return comp.."%", "", comp
	end
end

function Guide:AdvertiseWithPopup(nodelay)
	if not (ZGV.Frame and ZGV.Frame:IsShown()) then return end -- If ZGV is hidden then we don't need to be suggesting guides.

	local delay = not nodelay

	-- Don't suggest a guide while in combat. Wait until combat is done.
	if delay and Utils.IsPlayerInCombat() then
		ZGV.call_after_combat = function() self:AdvertiseWithPopup(true) end
		ZGV:Print(L['guide_next_ready'])

		return
	end

	local popup = ZGV.AdvertisePopup
	if not popup then
		popup = ZGV.Popup:New("Zygor_AdvertiseGuide_Popup","sis")

		--[[
		if self.image then
			dialog.tex = CHAIN(dialog:CreateTexture())
				:SetPoint("TOP",dialog.text2,"BOTTOM",0,-3) :SetSize(275,115) :SetTexture(self.image)
			.__END
		end
		--]]

		popup.OnAccept = function(me) ZGV:SetGuide(me.guide,me.guide.CurrentStepNum) end
		popup.OnDecline = function(me) ZGV.db.char.ignoredguides[me.guide.title]=true  end
		--dialog.OnEscape = function(self) if not ZGV.tempguideblock then ZGV.tempguideblock = {} end ZGV.tempguideblock[self.guide.title]=true self=nil end

		ZGV.AdvertisePopup = popup
	end

	popup:SetText(L['static_nextguide'],self.title_short)
	popup.guide=self

	if not ZGV.AdvertisePopup:IsShown() then
		ZGV.AdvertisePopup:Show()
	end
end

function Guide:GetProgress()
	return self.CurrentStepNum, #self.steps
end


function Guide:tostring()
	return self.title_short
end

-----------------------------------------
-- DEBUG
-----------------------------------------

function GuideProto:Debug(...)
	local str = ...
	ZGV:Debug("&guide "..str, select(2,...) )
end
