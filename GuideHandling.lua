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
local print = ZGV.print
local CHAIN = ZGV.Utils.ChainCall
local L = ZGV.L

-----------------------------------------
-- LOCAL VARIABLES
-----------------------------------------

local Viewer

local LONG_STEP_INTERVAL = 1
local SHORT_STEP_INTERVAL = .1
local completionInterval = LONG_STEP_INTERVAL

-----------------------------------------
-- SAVED REFERENCES
-----------------------------------------

ZGV.guidesets = {}
ZGV.registeredguides = {}	ZGV.rg = ZGV.registeredguides
ZGV.registered_includes = {}

ZGV.CurrentGuide = nil
ZGV.CurrentGuideName = nil
ZGV.CurrentStep	= nil
ZGV.CurrentStepNum = nil

-----------------------------------------
-- CURRENT GUIDE MANAGEMENT FUNCTIONS
-----------------------------------------

function ZGV:PreviousStep(fast)
	if not self.CurrentGuide then return end

	self.LastSkip = -1

	local step,backed = self:GetPreviousValidStep()
	if not step then return end

	self:Debug("PreviousStep to "..step.num..(fast and ' (fast)' or ''))

	-- drop 'backed' history states
	local history = self.sv.char.stephistory
	for i=1,backed do tremove(history) end

	if #history==0 then
		self.fastforward = false
		self.pause = true
	else
		self.fastforward = fast
		self.pause = not fast
	end

	self:FocusStep(step)
end

function ZGV:SkipStep(fast)
	if not self.CurrentGuide then return end

	self.LastSkip = 1
	self.fastforward = fast

	local step

	self.force_pause = Apollo.IsAltKeyDown() and Apollo.IsControlKeyDown()

	if self.force_pause then  -- forced next+1 step
		step=self.CurrentGuide.steps[self.CurrentStepNum+1]
		self.CurrentStep.needsreload=nil
	end  -- HACK.

	if not step then  -- when not forced, that is: usually.
		local step2,stepnum,guide

		local instantskip = nil			--TODO

		if fast and instantskip then
			step2,stepnum,guide=self.CurrentStep:GetNextCompletableStep()
		else
			step2,stepnum,guide=self.CurrentStep:GetNextValidStep()
		end  -- always returns a step, unless we're at the end.

		if guide then		-- TODO maybe don't ask to advance, just do it?
			guide = self:GetGuideByTitle(guide)
			guide:AdvertiseWithPopup()
			return
		end
		step=step2
	end

	if step then
		-- not last step
		self:Debug("SkipStep to ".. step.num..(fast and ' (fast)' or ''))

		if step.num == #self.CurrentGuide.steps then
			-- final step
			self.pause = true
		else
			self.pause = not fast
		end

		if self.force_pause then self.pause=true end

		self:FocusStep(step)
	else
		-- last step! or something went wrong and GetNextValidStep couldn't find anything to hop onto.

		--if self.CurrentStep.num == #self.CurrentGuide.steps then  -- never mind! assuming loss of next step = end of guide. Wondering if this is safe... ~sinus 2011-08-16
			self.pause = true
			self.fastforward = false
			if self.CurrentGuide.extra.nextguide then
				self:SetGuide(self.CurrentGuide.extra.nextguide)
				self:SendToChat("Loaded next guide: " .. self.CurrentGuide.title_short)
				--[[
				self.PopupAutoacceptTimer = ApolloTimer.Create(6, true, "HideAutoacceptPopup", self)
				self:ShowAutoacceptPopup("Loaded next guide:")
				self:ShowAutoacceptPopup(self.CurrentGuide.title_short)
				]]--
				return
			elseif self.CurrentGuide.steps and #self.CurrentGuide.steps>1 then
				ZygorGuidesViewer:ShowGuideSelect()

				--[[
				if not self.EndGuidePopup then
					local popup = ZGV.Popup:New("Zygor_EndGuide_Popup")

					popup.declinebutton:Hide()
					CHAIN(popup.acceptbutton)
						:ClearAllPoints()
						:SetPoint(BOTTOM,popup,BOTTOM,0,-5)

					self.EndGuidePopup = popup

					--self.EndGuidePopup.noMinimize = 1 --Can not minimize this one
				end

				if self.EndGuidePopup.lastguide ~= self.CurrentGuide then		-- Don't show this again if it has shown for this guide.
					self.EndGuidePopup.lastguide = self.CurrentGuide

					self.EndGuidePopup:SetText(L['static_endguide'])
					self.EndGuidePopup:Show()
				end
				]]--
			end
	end
end

-- return step = step obj
-- return backed = num of valid history skips
function ZGV:GetPreviousValidStep()
	local step
	local hist = ZGV.sv.char.stephistory
	local hlen = #hist
	local stepnum
	local backed=0
	local okaytostay
	repeat
		-- pop stepnum from history
		stepnum = hist[hlen-backed]

		-- valid number?
		if stepnum then
			-- history popped 'pop'erly, hurr durr

			-- get the step
			s = self.CurrentGuide.steps[stepnum]
			if s then
				backed = backed + 1
				step = s
			end
		else
			-- we broke history or it just ran out, whatever
			ZGV:Debug("step history broken, omg")


			-- TODO: Currently, when running out of history, we default to the first valid of the guide. Needs a message / confirmation.

			s = self.CurrentGuide:GetFirstValidStep()  -- always returns something, or breaks.
			if s then
				backed = hlen
				step = s
				okaytostay = true
			end
		end
	until (step:AreRequirementsMet() or self.db.profile.showwrongsteps) and (step~=self.CurrentStep or okaytostay)
	return step,backed
end

function ZGV:FocusStep(num,quiet)
	if type(num)=="string" and self.CurrentGuide.steplabels then
		local s=num
		num=self.CurrentGuide.steplabels[num]
		if num then
			num=num[1]
		end

		self:Debug("FocusStep: "..s.." = "..tostring(num))
	end
	if type(num)=="table" then num=num.num end
	if not num or num<=0 then return end
	if not self.CurrentGuide then return end
	if not self.CurrentGuide.steps then return end
	if num>#self.CurrentGuide.steps then return end

	self:Debug("FocusStep "..num..(quiet and " (quiet)" or ""))

	-- Record step into history
	if self.LastSkip>0 and self.CurrentStep then
		tinsert(self.sv.char.stephistory,self.CurrentStep.num)
	--	if self.db.char.guides_history[1] and self.db.char.guides_history[1][1]==self.CurrentGuide.title then
	--		self.db.char.guides_history[1][2]=self.CurrentStep.num
	--	end
	end

	local step = self.CurrentGuide.steps[num]

	step:SetAsCurrent()

	--TODO what else needs to be done on FocusStep

	--self:ClearRecentActivities()

	-- Whoa whoa. The step might load a different guide at this point! Play safe.
	local cs=self.CurrentStep
	local cg=self.CurrentGuide
	if (cs~=self.CurrentStep) or (cg~=self.CurrentGuide) then self:Debug("FocusStep: guide or step changed! bailing.") return end

	self.stepchanged = true

	--for i,goal in ipairs(self.CurrentStep.goals) do
	--	if goal:IsComplete() then self.recentlyCompletedGoals[goal]=true end
	--end

	local stepcomplete,steppossible = self.CurrentStep:IsComplete()
	if self.pause then
		self.LastSkip=1
		if not stepcomplete then
			self:Debug("unpausing")
			self.pause=nil
		end
	end

	-- TODO guide history
	-- add to last-guides history
	--[[
	local history = self.db.char.guides_history
	local found
	for gi,guidestep in ipairs(history) do
		if guidestep[1]==self.CurrentGuide.title then guidestep[2]=self.CurrentStepNum found=1 break end
	end

	if not found then
		tinsert(history,{self.CurrentGuide.title,self.CurrentStepNum})
	end
	if #history>20 then tremove(history,1) end
	--]]

	if not quiet then
		self:FocusStepUnquiet()
	end
end

function ZGV:FocusStepUnquiet()
	self:SetWaypoint()

	self.Viewer:Update(true)
	
	Sound.Play(Sound.PlayUI07SelectTabPhysical) --API
end

function ZGV:SetWaypoint(what)
	local set=false
	if what==false then
		ZGV.Pointer:ClearWaypoints()
		set=true
	else
		ZGV.Pointer:ClearWaypoints("way")
		if tonumber(what) then
			local goal=self.CurrentStep.goals[tonumber(what)]
			if goal and goal.x then
				ZGV.Pointer:SetWaypoint(goal.map or nil,goal.x,goal.z,goal.y,{title=goal:GetText(),type="way"})
				set=true
			end
		else
			-- set up waypoints
			for gi,goal in ipairs(self.CurrentStep.goals) do
				if goal.x and goal.y and not goal.force_noway then --and not goal:IsComplete()
					ZGV.Pointer:SetWaypoint(goal.map or nil,goal.x,goal.z,goal.y,{title=goal:GetText(),goalnum=gi,type="way"})
					set=true
					--break
				end
			end
			-- point to first completable
			ZGV.Pointer:SetArrowToFirstCompletableGoal()
		end
	end
	return set
end

-- TODO skipping always super fast atm
function ZGV:TryToCompleteStep(force)
	if not (self.CurrentStep and self.CurrentGuide) then return end
	if not self.Frame:IsShown() then return end

	local stepcomplete, steppossible, completing
	local t, elapsed
	local confirmcompleted, confirmfound

	-- prevent overtime checks
	t=GameLib.GetGameTime() --API
	elapsed = t - (self.lastStepComplete or 0)
	self.lastStepComplete = t

	self.completionelapsed = (self.completionelapsed or 0) + elapsed
	if self.completionelapsed < completionInterval and not force then return end	-- throttle updating
	self.completionelapsed = 0

	stepcomplete,steppossible = self.CurrentStep:IsComplete()

	completing = stepcomplete

	-- TODO skip non-completable steps
	--[[ smart skipping: treat invalid or impossible or skippable as completed
	if not self.CurrentStep:AreRequirementsMet()
	or (self.db.profile.skipimpossible and not steppossible)
	or (self.db.profile.skipauxsteps and self.CurrentStep:IsAuxiliarySkippable()) then
		completing=true
	end
	--]]

	if not completing then
		completionInterval = LONG_STEP_INTERVAL
		self.pause = nil
	end
	
	-- Is one of the goals a confirm that is not completed?
	for i,goal in ipairs(self.CurrentStep.goals) do
		if goal.action == "confirm" --[[and goal.always]] then
			confirmfound = true
			if goal.status == "complete" then confirmcompleted = true end
		end
		
		if goal.action == "nextguide" then
			confirmfound = true
			if goal.status == "complete" then 
				confirmcompleted = true 
				if goal.nextguide then
					ZGV.CurrentGuide.extra.nextguide = goal.nextguide
				end
			end
		end
	
	
	end
	if confirmfound and not confirmcompleted then completing = false end

	if self.pause then
		completionInterval = LONG_STEP_INTERVAL
		self.LastSkip = 1
	else
		if completing then
			self:Debug("Skipping step: "..self.CurrentStepNum.." ("..(stepcomplete and "complete" or (steppossible and "possible?" or "impossible"))..")")
			local s=""
			for gn,goal in ipairs(self.CurrentStep.goals) do
				s=s.."["..gn.."] ".. goal:GetText().." ("..(goal.status or "").."),  "
			end
			self:Debug("Skipped goals were: %s",s)

			-- TODO flashage
			--[[
			if self.lasttriedstep and self.lasttriedstep==ZGV.CurrentStep and not self.lastwascompleted then
				--newly completed!
				if self.db.profile.flashborder then
					self.delayFlash=1
				end
			end
			--]]

			-- do, do, do the SKIP!

			if self.LastSkip<0 then
				self:PreviousStep(true)
			else
				self:SkipStep(true)
			end
			self.fastforward=true

			completionInterval = completionInterval * 0.8
			if completionInterval < SHORT_STEP_INTERVAL then
				completionInterval = SHORT_STEP_INTERVAL
			end

			Sound.Play(Sound.PlayUI07SelectTabPhysical) --API
	
			-- A step was completed, update the ProgressBar
			self.Viewer:UpdateProgressBar()
		else
			completionInterval = LONG_STEP_INTERVAL
			self.pause=nil
			self.fastforward=nil
			self.LastSkip = 1
		end
	end

	--self.lasttriedstep = ZGV.CurrentStep
	--self.lastwascompleted = stepcomplete

	-- TODO try to suggest next guide
	--self:MaybeSuggestNextGuide()

	self.Viewer:Update()		-- TODO does this need to be ran every time? Could it be only ran when a step is completed to minimize work done?
		--~~ it makes the display update for 0/5 counts etc...
end

-----------------------------------------
-- GEN FUNCTIONS
-----------------------------------------

-- IN: "Zygor's Daggerfall Covenant Leveling Guides"
-- OUT: "LEVELING"
function ZGV:SanitizeGuideTitle(title)
	title = title:gsub([[\\]],[[\]])
	title = title :gsub("ZGV's ","")
	title = title
			:gsub("^Common ","")
			:gsub("^Aldmeri Dominion ","")
			:gsub("^Ebonheart Pact ","")
			:gsub("^Daggerfall Covenant ","")

	-- fix old-style guide paths
	title = title
		:gsub("^Leveling.-\\","LEVELING\\")
		--:gsub("^Profession.-\\","PROFESSIONS\\")
		--:gsub("^Dungeon.-\\","DUNGEONS\\")

	return title
end

function ZGV:GetGuideByTitle(title)
	if not title then return end
	title = ZGV:SanitizeGuideTitle(title)  -- code-side fix for "common" guides.
	for i,v in ipairs(self.registeredguides) do
		if v.title==title then return v end
	end
end

function ZGV:MaybeSuggestNextGuide()		-- TODO Assume all guides must be completed for the time being. Moving to next guides is handled with a |next line
	if true then return end
	-- And now check if the next guide is up for suggesting.
	-- However, don't bother suggesting others when we're exclusive and still suggested.
	if self.CurrentGuide:GetStatus()=="SUGGESTED" and self.CurrentGuide.condition_suggested_exclusive then return end

	-- If we are still suggested and not exclusive then we can try to suggest next guide. Might be better.
	local nextguide = self.CurrentGuide.next
	if nextguide and not ZGV.db.char.ignoredguides[nextguide] then --and not(ZGV.tempguideblock and ZGV.tempguideblock[nextguide])then
		nextguide = self:GetGuideByTitle(nextguide)
		if nextguide then
			local nextsuggested = (nextguide:GetStatus()=="SUGGESTED")

			--ZGV.suggesting = nextsuggested

			if nextsuggested then --and self.db.profile.n_popup_sis then
				nextguide:AdvertiseWithPopup()
			end

		end
	end

end


function ZGV:FindSuggestedGuides()
	local suggested={}
	for i,guide in ipairs(self.registeredguides) do
		if guide:GetStatus()=="SUGGESTED" then
			if guide.condition_suggested_exclusive then
				return {guide}
				-- suggest-exclusive guides force their suggestion, if suggested.
			else
				if not suggested[guide.type] then suggested[guide.type]={} end

				tinsert(suggested[guide.type],guide)
			end
		--[[
		elseif guide.sugGroup then
			if not suggested[guide.type] then suggested[guide.type] = {} end

			-- TODO can we do this without this work? Just look at registered_groups?

			local found
			-- Go through and see if this group has been added yet.
			for i,group in ipairs(suggested[guide.type]) do
				if group.name and group.name == guide.sugGroup then
					found = true
					break
				end
			end

			if not found then
				tinsert(suggested[guide.type],{groups={},guides={guide},name = guide.sugGroup, ord=1})
			end
		--]]
		end
	end
	return suggested
end

-----------------------------------------
-- SETUP FUNCTIONS
-----------------------------------------

function ZGV:RegisterGuide(title,data,extra)
	if data and extra then  extra,data=data,extra  end
	title = self:SanitizeGuideTitle(title)

	local guide = ZGV.GuideProto:New(title,data,extra)

	guide.extra = extra

	tinsert(self.registeredguides,guide)
end

function ZGV:RegisterInclude(title,text)
	self.registered_includes[title]={text=text}

	self.registered_includes[title].GetParsed = function (self,params)
		local function parse_param(param)
			return params and params[param] or ""
		end
		return self.text:gsub("%%(%w+)%%",parse_param)
	end
end

function ZGV:DoMutex(m)
	if self.guidesets[m] then
		return true
	else
		self.guidesets[m]=true
	end
end

-----------------------------------------
-- LOAD FUNCTIONS
-----------------------------------------

function ZGV:SetGuide(name,step)
	if not name then return end
	step=step or 1

	local guide
	local err

	-- Get the guide object
	if type(name)=="number" then
		local num = name
		if self.registeredguides[num] then
			guide = self.registeredguides[num]
		else
			self:Print("Cannot find guide number: "..num)
		end
	elseif type(name)=="string" then
		guide = self:GetGuideByTitle(name)
		if not guide then
			self:Print("Cannot find guide: "..name)
		end
	else
		guide=name  --omg, object
	end

	if guide then
		assert(class(guide)=="Guide","Must be a Guide object to set guide.")
		local status,msg = guide:GetStatus()
		-- Use title_short instead of title because matching with backslashes in it seems off?
		if status=="INVALID" and not ZGV.db.char.goodbadguides[guide.title_short] then
			if not self.BadGuidePopup then
				local popup = ZGV.Popup:New("Zygor_BadGuide_Popup")

				popup.OnAccept = function(me)
					ZGV.db.char.goodbadguides[me.guide.title_short]=true
					ZGV:SetGuide(me.guide,me.step)
				end

				popup.OnDecline = function(me)
					ZGV.GuideMenu:Show()
				end

				self.BadGuidePopup = popup

				--self.BadGuidePopup.noMinimize = 1 --Can not minimize this one
			end

			self.BadGuidePopup:SetText(L['static_badguide']:format(guide.title_short,msg or ""))

			self.BadGuidePopup.guide=guide
			self.BadGuidePopup.step=step

			self.BadGuidePopup:Show()

			return "BAD"
		end

		-- Out with the old
		if self.CurrentGuide then self.CurrentGuide:Unload() end

		guide:Parse(true)		-- Make sure this is parsed

		if guide.steps and step > #guide.steps then step = 1 end -- in case the number of steps in guide changed and we are out of bounds

		if guide.steps and #guide.steps > 0
		and not guide.parse_failed
		then
			local name = guide.title

			guide:SetAsCurrent()

			self.sv.char.stephistory = {}

			-- History: remove
			--local history = self.db.char.guides_history
			--local found
			--for gi,guide_step in ipairs(history) do
			--	if guide_step[1]==self.CurrentGuide.title then tremove(history,gi) break end
			--end

			--name=name:gsub(self.CurrentGuide.type,ZGV.GuideTitles[self.CurrentGuide.type]) -- make LEVELING-Leveling and such. -- TODO
			self:Print(L["message_loadedguide"]:format(guide.title))
			self:Debug("Guide loaded: "..name)

				--self:SendMessage("ZYGORGV_GUIDE_LOADED",guide.title)

				-- History: (re)instate at index 1
				--if #self.db.char.guides_history>MAX_GUIDES_HISTORY then tremove(self.db.char.guides_history) end
				--tinsert(self.db.char.guides_history,1,{guide.title,stepobj.num})

			self:FocusStep(step)
		else
			err = "Guide not parsed"
		end

	else
		err = L["message_missingguide"]:format(name)
	end

	if err then
		self:Print("Unable to load guide "..(guide and type(guide)=="table" and guide.title or name)..": "..err)
		self.sv.char.guide = nil
		self.sv.char.step = nil
		self.CurrentGuide = nil
		self.CurrentGuideName = nil
		self.CurrentStep = nil
		self.CurrentStepNum = nil
	end

	self.pause = nil

	self.Viewer:Update(true)
end

function ZGV:GuideLoadStartup()
	if not self.guidesloaded then return end -- let the OnGuidesLoaded func call us.
	if self.guidestartcomplete then return end


	-- Trim off wrong faction guides. So sorry we couldn't do it at load time :(
	-- ACTUALLY WE DID!! With the new file loader it became reality. 2014-07-25 01:08:11 - sinus
	
	--[[
		local i=1
		local safe=0
		repeat
			local guide = self.registeredguides[i]
			if guide and guide.extra and guide.extra.faction and not ZGV.Utils:IsFaction(guide.extra.faction) then
				-- kill it with fire
				table.remove(self.registeredguides,i)
				Print("Trimmed off "..guide.title)
			else
				i=i+1
			end
			safe=safe+1   if safe>2000 then break end
		until i>#self.registeredguides
	--#
	--]]


	local history = self.db.char.stephistory	-- Save step history. Gets reset in SetGuide, but at startup we don't want it reset
	self:SetGuide(self.sv.char.guidename,self.sv.char.step)
	self.db.char.stephistory = history


	if not self.CurrentGuide then
		self:Print("Finding proper starter section.")
		gs = self:FindSuggestedGuides()
		if gs['LEVELING'] then gs=gs['LEVELING'] end
		if not gs or #gs==0 then
			self:Print("Loading first guide available.")
			if self.registeredguides[1] then -- if new char, load first guide
				self:SetGuide(self.registeredguides[1]["title"])
			end
		elseif #gs==1 then
			local g=gs[1]
			self:SetGuide(g)
		end
	end

	self.Viewer:Update(true)
	self.guidestartcomplete = true
end




ZGV.ScheduledLoads={}

function ZGV:LoadGuideFiles()
	self:Debug("Loading guide files...")
	if ZGV.Utils:IsFaction("Dominion") then
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\PreTutorialDominion")
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\TheDestiny")
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\CrimsonIsle")
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\LevianBay")
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\Deradune")
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\Ellevar")
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\Illium")
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\Auroria")
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\Whitevale")
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\Farside")
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\Wilderrun")
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\Malgrave")
		self:ScheduleLoadGuideFile("Leveling\\Dominion\\Grimvault")
		self:ScheduleLoadGuideFile("Dailies\\DominionDailies")
	elseif ZGV.Utils:IsFaction("Exiles") then
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\PreTutorialExile")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\TheGamblersRuin")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\NorthernWilds")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\EverstarGrove")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\Algoroc")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\Celestion")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\Thayd")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\Galeras")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\Whitevale")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\Farside")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\Wilderrun")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\Malgrave")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\Grimvault")
		self:ScheduleLoadGuideFile("Leveling\\Exiles\\Dailies")
		self:ScheduleLoadGuideFile("Dailies\\ExilesDailies")
	end
	self:Debug("Loading of guide files scheduled: "..#ZGV.ScheduledLoads.." guides queued.")
	self.ScheduledLoadsTotal = #self.ScheduledLoads
	self.ScheduledLoadsSuccessful = 0
end

function ZGV:ScheduleLoadGuideFile(file)
	table.insert(ZGV.ScheduledLoads,file)
end

function ZGV:RunScheduledGuideLoad()
	if #ZGV.ScheduledLoads>0 then
		local file = table.remove(ZGV.ScheduledLoads,1)
		self:LoadGuideFile(file)
		self.ScheduledLoadsSuccessful = self.ScheduledLoadsSuccessful + 1
		self.ScheduledLoadsProgress = self.ScheduledLoadsSuccessful / self.ScheduledLoadsTotal
		return true
	end
end

--unused now
function ZGV:LoadGuideFileSet(basefile)
	return self:LoadGuideFile(basefile.."_MASTER") or self:LoadGuideFile(basefile) or self:LoadGuideFile(basefile.."Trial")
end

function ZGV:LoadGuideFile(file)
	if not ZGV.INFO or not ZGV.INFO.assetfolder then return end
	file = ZGV.INFO.assetfolder.."\\Guides\\"..file..".lua"
	self:Debug("Loading "..file)
	local fun,err = loadfile(file)
	if fun then
		fun()
		return true
	else
		if err:find("Result too large") then err="(file not found)" end
		self:Debug("ERROR: "..err)
	end
end

-----------------------------------------
-- STARTUP
-----------------------------------------

tinsert(ZGV.startups,function(self)
	Viewer = ZGV.Viewer
end)

