assert(not ZGV, "Two ZGV loaded.")

-----------------------------------------------------------------------------------------------
-- Client Lua Script for ZgWriter
-- Copyright (c) NCsoft. All rights reserved
-----------------------------------------------------------------------------------------------
 
require "Window"
 
-----------------------------------------------------------------------------------------------
-- ZgWriter Module Definition
-----------------------------------------------------------------------------------------------
ZygorGuidesViewer = {} 
ZGV = ZygorGuidesViewer

ZGV.startups = {}
ZGV.inits={}
 
ZGV.L = ZygorGuidesViewer_L("Main")
ZGV.O = ZygorGuidesViewer_L("Option")

local L=ZGV.L

local GameLib = GameLib
local QuestLib = QuestLib

-----------------------------------------------------------------------------------------------
-- Constants
-----------------------------------------------------------------------------------------------
-- e.g. local kiExampleVariableMax = 999
 
-----------------------------------------------------------------------------------------------
-- Initialization
-----------------------------------------------------------------------------------------------

--[[
-- SCREW THIS. This is a singleton addon. It doesn't need "instancing", for fork's sake.

function ZygorGuidesViewer:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self 

    -- initialize variables here

    return o
end
--]]

function ZygorGuidesViewer:Init()
	local bHasConfigureFunction = true
	local strConfigureButtonText = "Config"
	local tDependencies = {
		-- "UnitOrPackageName",
	}
    Apollo.RegisterAddon(self, bHasConfigureFunction, strConfigureButtonText, tDependencies)
end

 

-----------------------------------------------------------------------------------------------
-- ZgWriter OnLoad
-----------------------------------------------------------------------------------------------
function ZygorGuidesViewer:OnLoad()
	-- Get some info from the addon
	ZGV.INFO = Apollo.GetAddonInfo("ZygorGuidesViewer")
	ZGV.INFO.assetfolder = Apollo.GetAssetFolder()

    -- load our form file
	Apollo.LoadSprites("ZygorUI.xml") 
	Apollo.LoadSprites("ZygorUIBoxes.xml") 
	Apollo.LoadSprites("ZygorUIGuides.xml") 
	Apollo.LoadSprites("titlebuttons.xml") 
	Apollo.LoadSprites("StepIcons.xml") 
	self.xmlDoc = XmlDoc.CreateFromFile("ZygorGuidesViewer.xml")
	self.xmlDoc:RegisterCallback("OnDocLoaded", self)
	
	self.db = {}
	self.sv = self.db
	self.db.profile = {}
	self.db.char = {}

	self.sv.char.stephistory = {}
	
	self.configSettings = {}
end

-----------------------------------------------------------------------------------------------
-- ZgWriter OnDocLoaded
-----------------------------------------------------------------------------------------------
function ZygorGuidesViewer:OnDocLoaded()
	if self.xmlDoc ~= nil and self.xmlDoc:IsLoaded() then
		self.Frame = Apollo.LoadForm(self.xmlDoc, "ZGViewerFrame", nil, self)
		if self.Frame == nil then
			Apollo.AddAddonErrorText(self, "Could not load the main window for some reason.")
			return
		end
		self.Viewer.Frame = self.Frame --workaround to keep Houston working
		self.Frame:Show(false)

		self.MinimapButton = Apollo.LoadForm(self.xmlDoc, "ZGVMiniMapButton", nil, self)
		if self.MinimapButton == nil then
			Apollo.AddAddonErrorText(self, "Could not load the minimap button for some reason.")
			return
		end
		if self.db.char.buttonpos then  
			p1, p2, p3, p4 = unpack(self.db.char.buttonpos)
			ZGV.MinimapButton:SetAnchorOffsets(p1, p2, p3, p4)
		end


		for i,option in ipairs(self.Options.settings) do -- if new char, load defaults
			if self.db.char[option.name]==nil then self.db.char[option.name]=option.default end
		end
									
		if self.db.char.guide_show then self.Frame:Invoke() end

		if self.db.char.windowpos then  
			p1, p2, p3, p4 = unpack(self.db.char.windowpos)
			if p1 < 0 and p2 < 0 then 
				ZGV.Viewer.Frame:SetAnchorOffsets(p1, p2, p1+320, p2)
			end
		end

		if self.db.char.guide_opacity then ZGV.Viewer.Frame:SetOpacity(self.db.char.guide_opacity)  end

		if self.db.char.guide_lock~=nil then 
			self.Frame:FindChild("ZGVContainer"):FindChild("ZGVLockButton"):Show(not self.db.char.guide_lock)
			self.Frame:FindChild("ZGVContainer"):FindChild("ZGVUnlockButton"):Show(self.db.char.guide_lock)
			self.Frame:SetStyle("Moveable", not self.db.char.guide_lock)
		end

 		self.W = {}
		setmetatable(self.W,{__index=function(t,k) return self.Frame:FindChild(k) end})

		Apollo.RegisterSlashCommand("zygor", "ZygorCommand", self)
		Apollo.RegisterSlashCommand("re", "ReloadUI", self)
		Apollo.RegisterEventHandler("QuestObjectiveUpdated", "OnQuestObjectiveUpdated", self)
		Apollo.RegisterEventHandler("UnitEnteredCombat", "OnEnterCombat", self)
		Apollo.RegisterEventHandler("LuaError", "OnLuaError", self)

		self.startuptimer = ApolloTimer.Create(0.05, true, "OnStartupTimer", self)
	end
end

function ZygorGuidesViewer:OnLuaError(tAddon, strError, bCanIgnore)
	if self.prevError ~= strError then
		self.Log:Add("%s",strError)
		self.prevError = strError
	end
end


function ZygorGuidesViewer:ReloadUI()
	RequestReloadUI()
end

-----------------------------------------------------------------------------------------------
-- ZgWriter Functions
-----------------------------------------------------------------------------------------------
-- Define general functions here

-- on SlashCommand "/zgwriter"
function ZygorGuidesViewer:ZygorCommand(strCmd,strArg)
	if strArg == "show" then
		self.Viewer.Frame:Show(true) -- show the window
		ZGV.db.char.guide_show = true
		return
	end

	if strArg == "toggle" then
		if ZGV.db.char.guide_show then
			self.Viewer.Frame:Show(false) -- hide the window
			ZGV.db.char.guide_show = false
		else 
			self.Viewer.Frame:Show(true) -- show the window
			ZGV.db.char.guide_show = true
		end
		return
	end

	if strArg == "show arrow" then ZGV.db.char.arrow_show = true return end
	if strArg == "toggle arrow" then ZGV.db.char.arrow_show = not ZGV.db.char.arrow_show return end

	if strArg == "options" then self.Options:OnConfigure() return end
	if strArg == "guides" then ZygorGuidesViewer:ShowGuideSelect() return end
	if strArg == "debug" then ZGV.BugReport:OpenBugWindow() return end

	if strArg == "reset guide" then 
		ZGV.db.char.stephistory = {}
		ZGV.db.char.guidename = false
		RequestReloadUI()
	return end


	ChatSystemLib.PostOnChannel(ChatSystemLib.ChatChannel_Command, "Arguments for /zygor", "Zygor Guides Viewer")		
	ChatSystemLib.PostOnChannel(ChatSystemLib.ChatChannel_Command, "- show - shows viewer window")		
	ChatSystemLib.PostOnChannel(ChatSystemLib.ChatChannel_Command, "- toggle - toggles visibility of viewer window")		

	ChatSystemLib.PostOnChannel(ChatSystemLib.ChatChannel_Command, "- show arrow - shows waypoint arrow")		
	ChatSystemLib.PostOnChannel(ChatSystemLib.ChatChannel_Command, "- toggle arrow - toggles visibility of waypoint arrow")		

	ChatSystemLib.PostOnChannel(ChatSystemLib.ChatChannel_Command, "- options - shows options window")		
	ChatSystemLib.PostOnChannel(ChatSystemLib.ChatChannel_Command, "- guides - shows guide selection window")		
	ChatSystemLib.PostOnChannel(ChatSystemLib.ChatChannel_Command, "- reset guide - reset selected guide and step")		
	ChatSystemLib.PostOnChannel(ChatSystemLib.ChatChannel_Command, "- debug - creates a debug report")		

end

function ZygorGuidesViewer:CloseGuideWindow( wndHandler, wndControl, eMouseButton )
	self.Viewer.Frame:Show(false) -- hide the window
	ZGV.db.char.guide_show = false
end


------------------ VARIOUS NON-UI STUFF

function ZygorGuidesViewer:Error(s,...)
	if not COLORS_ENABLED then  s = s:gsub("<T TextColor=\".-\">",""):gsub("</T>","")  end
	Print(s:format(...))
end

function ZygorGuidesViewer:Print(s,...)
	if not COLORS_ENABLED then  s = s:gsub("<T TextColor=\".-\">",""):gsub("</T>","")  end
	Print(s:format(...))
end

local debug_flags = {
	parser=false
}


function ZygorGuidesViewer:Debug (msg,...)
	if not msg or type(msg)~="string" then error("Debug msg type error") end
	local flagsmsg

	while msg:sub(1,1)=="&" do
		local flag,rest = msg:match("^&([a-zA-Z0-9_]+)%s+(.*)$")
		if flag then
			local flagdata = debug_flags[flag]
			if flagdata==false then return end -- otherwise assume it SET!
			--if type(flagdata)=="table" and flagdata.color then flag = "|c"..flagdata.color..flag.."|r" end
			flagsmsg = (flagsmsg and (flagsmsg.." ") or "") .. "[" .. flag .. "]"

			msg = rest
		else
			msg="?"..msg:sub(2) -- failsafe, cut the & off
		end
	end

	if flagsmsg then msg = flagsmsg.." "..msg end

	local formatted_msg = string.format(tostring(msg),...)

	if true or self and self.sv and self.sv.profile and self.sv.profile.debug then
		self.DebugI = (self.DebugI or 0) + 1
		--local t = GetFrameTimeSeconds()
		local t = 0
		local datestamp = GameLib.GetLocalTime().strFormattedTime
		
		--[[
		if t~=lastdate then
			mscycle=(mscycle+1)%mscolorsn
			lastdate=t
			timecolor=mscolors[mscycle]
		end
		--]]

		local debugms = GameLib.GetGameTime() --GetGameTimeMilliseconds() - t*1000
		
		local timecolor="" --todo
		local debugcolor="" --todo
		
		--local message = ("ZGV: %s%s+%03d #%d: %s%s"):format(timecolor,datestamp,debugms,self.DebugI,debugcolor,formatted_msg)
		local message = ("ZGV: %s %.03f #%d: %s"):format(datestamp,debugms,self.DebugI,formatted_msg)

		if not COLORS_ENABLED then
			message = message:gsub("<T TextColor=\".-\">",""):gsub("</T>","")
		end

		if ZGV.db.char.debug then
			Print(message)
		end
	end
	self.Log:Add("%s",formatted_msg)
end


function ZGV:OnTOCLoaded()
	if not self.TOCXML:IsLoaded() then return end
	ZGV.TOC = ZGV.TOCXML:ToTable()
	ZGV.TOCXML = nil
	ZGV.INFO.version = ZGV.TOC.Version or "?"
end


ZGV.StartupStage = "init"
ZGV.StartupStageCounter = 0
local function NextStage(stage)
	ZGV.StartupStage = stage
	ZGV.StartupStageCounter = 0
end

function ZGV:OnStartupTimer()

	ZGV.StartupStageCounter = ZGV.StartupStageCounter + 1
	ZGV:Debug("Startup stage: "..ZGV.StartupStage.." "..ZGV.StartupStageCounter)

	if self.StartupStage=="init" then
		
		if not GameLib.GetPlayerUnit() then return end  -- wait for it...
		if not ZGV.Lib.knownZones then return end
		self.loading="Loading..."
		
		return NextStage("toc")
	elseif self.StartupStage=="toc" then
	
		self.TOCXML = XmlDoc.CreateFromFile("toc.xml")
		self.TOCXML:RegisterCallback("OnTOCLoaded", self)
	
		return NextStage("modules")
	elseif self.StartupStage=="modules" then

		-- startup 'modules', let's hope they're fast
		for i,startup in ipairs(self.startups) do
			startup(self)
		end
		-- self.startups = nil

		return NextStage("queueguides")
	elseif self.StartupStage=="queueguides" then
	
		self:LoadGuideFiles() --schedule, actually.
	
		return NextStage("loadguides")
	elseif self.StartupStage=="loadguides" then
		
		if self:RunScheduledGuideLoad() then return end  -- if it ran well, then it parsed something. Enough!
		
		return NextStage("parseguides")
	elseif self.StartupStage=="parseguides" then
		
		local full_load = true or self.db.profile.loadguidesfully --TODO
		for i,guide in ipairs(self.registeredguides) do
			if not guide.parsed and not guide.parse_failed then
				guide:Parse(full_load)
				return
			end
		end
		self.RegisterGuide=function() ZGV:Print("Too late to RegisterGuide at this point!") end
	
		return NextStage("viewerinit")
	elseif self.StartupStage=="viewerinit" then
	
		self.Viewer:Initialize()

		return NextStage("viewer")
	elseif self.StartupStage=="viewer" then

		self.Viewer:Update(true)
		
		return NextStage("tests")
	elseif self.StartupStage=="tests" then
	
		if self.Testing then self.Testing:RunAllTests() end
		
		return NextStage("cleanup")
	elseif self.StartupStage=="cleanup" then
	
		collectgarbage("step",10000)

		self.pause = true
		self.loading=nil  -- disable startup steps
		self.guidesloaded=true  -- completely disable the startup thread

		self.LastSkip = 1

		self:Print(L['welcome_guides'],#self.registeredguides)

		self:GuideLoadStartup()

		self:Debug("Loading time - guides: %.2f",self.loading_time_guides or -1)
		self:Debug("Loading time - DEV: %.2f",self.loading_time_DEV or -1)
		self:Debug("Loading time - total: %.2f",self.loading_time_total or -1)
		
		-- start timer for registering addons and events for autoaccept/complete
		self:RegisterAutoaccept()

		self.completionTimer = ApolloTimer.Create(0.1, true, "OnCompletionTimer", self)  -- kick off 

	end
	
	NextStage("complete")
	-- successfully inited!
	self.startuptimer:Stop()
end

function ZygorGuidesViewer:OnCompletionTimer()
	self:TryToCompleteStep()
end

function ZygorGuidesViewer:OnEnterCombat(unitChecked, bInCombat)
	if not self.db.char.guide_hide_in_combat then return end
	if unitChecked == GameLib.GetPlayerUnit() then
		if bInCombat then
			self.Frame:Show(false)
		else 
			if self.db.char.guide_show then 
				self.Frame:Show(true)
			end
		end
	end
end 


--[[
local thread
local startup_time=0
local STARTUP_INTENSITY=50
local startup_frames,startup_ticks=0,0
local last_gettime
function ZGV:OnStartupTimer()
	if not last_gettime then last_gettime=GetFrameTimeSeconds() end
	if last_gettime==GetFrameTimeSeconds() then return end  -- ah-ha, NOT loaded then!
	if not self.player_activated then return end

	local c = _StartupThread()
--]]
	--[[
	-- Coroutine ditched 1/28 because of ZOS bugs. Bring back later.
	if not thread then
		thread = create(_StartupThread)
		self:Debug("&startup It starts...")
	end

	startup_frames = startup_frames + 1
	local thistime=0
	while thistime<STARTUP_INTENSITY do
		local t = GetGameTimeMilliseconds()
		local good,ret = resume(thread)

		t = GetGameTimeMilliseconds()-t
		startup_ticks = startup_ticks + 1
		thistime = thistime + t
		startup_time=startup_time + t
		self:Debug("&startup Startup frame %d tick %d |ceeff88%s|r took |cffeeaa%d|rms",startup_frames,startup_ticks,tostring(ret),t)

		self.startuptimes[ret]=(self.startuptimes[ret] or 0) + t

		if not good then
			self.loading=nil
			self:Print("ERROR initializing, check the Lua errors and report them, please.")
			error("ERROR in startup frame ".. startup_frames ..": ".. tostring(ret) .."\n")
			self.MasterFrame:SetHandler("OnUpdate",nil)
			break
		elseif status(thread)=="dead" or ret=="endme" then
			self:Debug("&startup Startup complete in %.2f (%d ticks in %d frames)",startup_time,startup_ticks,startup_frames)
			self:Debug("&startup From file load to variables = %.2f",ZGV.starttime-ZGV.loadtime)
			self:Debug("&startup Total startup (with distractions) = %.2f",GetGameTimeMilliseconds()-ZGV.starttime)
			self.loading=nil
			self.MasterFrame:SetHandler("OnUpdate",nil)
			break
		elseif ret and ret==1 then
			self.loading=nil
			break
		else
			-- just happily continue
		end
	end
	--]]
--[[
	self.loading=nil
	self.MasterFrame:SetHandler("OnUpdate",nil)
end
--]]


-----------------------------------------------------------------------------------------------
-- ZGV Instance
-----------------------------------------------------------------------------------------------
--ZGV = ZygorGuidesViewer:new()
ZGV:Init()

---------------------------------------------------------------------------------------------------
-- ZGViewerFrame Functions
---------------------------------------------------------------------------------------------------
function ZygorGuidesViewer:FocusPrevStep( wndHandler, wndControl, eMouseButton )
	self:PreviousStep(eMouseButton == GameLib.CodeEnumInputMouse.Right)
	if ZGV.CurrentGuide then 
		local currS, totalS = ZGV.CurrentGuide:GetProgress()
		self.Frame:FindChild("ZGVContainer"):FindChild("ProgressBar"):SetProgress(currS)
		self.Frame:FindChild("ZGVContainer"):FindChild("ProgressBar"):SetMax(totalS)
	end
	return true
end

function ZygorGuidesViewer:FocusNextStep( wndHandler, wndControl, eMouseButton )
	self:SkipStep(eMouseButton == GameLib.CodeEnumInputMouse.Right)
	if ZGV.CurrentGuide then 
		local currS, totalS = ZGV.CurrentGuide:GetProgress()
		self.Frame:FindChild("ZGVContainer"):FindChild("ProgressBar"):SetProgress(currS)
		self.Frame:FindChild("ZGVContainer"):FindChild("ProgressBar"):SetMax(totalS)
	end
	return true
end

function ZygorGuidesViewer:StepDelta( wndHandler, wndControl, nLastRelativeMouseX, nLastRelativeMouseY, fScrollAmount, bConsumeMouseWheel )
	if fScrollAmount>0 then self:SkipStep() else self:PreviousStep() end
	return true
end


function ZygorGuidesViewer:GuideToggleLock( wndHandler, wndControl, eMouseButton )
	local state = self.Frame:IsStyleOn("Moveable")
	
	self.Frame:SetStyle("Moveable", not state)
	self.Frame:FindChild("ZGVContainer"):FindChild("ZGVLockButton"):Show(not state)
	self.Frame:FindChild("ZGVContainer"):FindChild("ZGVUnlockButton"):Show(state)
	self.db.char.guide_lock = state
end

function ZygorGuidesViewer:ToggleGuide()
	if ZGV.db.char.guide_show == true then 
		self.Viewer.Frame:Show(false)
		ZGV.db.char.guide_show = false
	else
		self.Viewer.Frame:Show(true)
		ZGV.db.char.guide_show = true
	end
end




---------------------------------------------------------------------------------------------------
-- ZGV Configuration Functions
---------------------------------------------------------------------------------------------------

function ZygorGuidesViewer:OnConfigure() -- called by wildstar on "configure" button in addon list
	self.Options:OnConfigure()
end

-- SAVE/RESTORE, built-in functionality, called from Apollo

function ZygorGuidesViewer:OnSave(eType)
	return ZGV.Options:OnSave(eType)
end
function ZygorGuidesViewer:OnRestore(eType, tSavedData)
	ZGV.Options:OnRestore(eType,tSavedData)
end




function ZygorGuidesViewer:ShowGuideSelect()
	if not ZGV.Options.wndConfig then
		ZGV.Options:OnConfigure()
	else 
		ZGV.Options.wndConfig:Invoke()
	end
	ZGV.Options:ShowGuidesWindow()
end


function ZygorGuidesViewer:onRadioToggleGroup1( wndHandler, wndControl, eMouseButton ) 
-- there needs to be a separate function for each radio buttons group
	local name = "radio1"
	local state = wndHandler:GetParent():GetRadioSel("radio1")
-- commented out, since we save other items after clicking ok in window
--	self.configSettings[name] = state
--	Print(name .. " is " .. tostring(state))
end

function ZygorGuidesViewer:onCheckboxToggle( wndHandler, wndControl, eMouseButton )
	local name = wndHandler:GetName()
	local state = wndHandler:IsChecked()
-- commented out, since we save other items after clicking ok in window
--	self.configSettings[name] = state
--	Print(name .. " is " .. tostring(state))
end

function ZygorGuidesViewer:OnQuestObjectiveUpdated(quest,obj,_)
	self.Lib:GetKnownQuests()
end

---------------------------------------------------------------------------------------------------
-- BugReport Functions
---------------------------------------------------------------------------------------------------
function ZygorGuidesViewer:OpenBugWindow()
	ZGV.BugReport:OpenBugWindow()
end

function ZygorGuidesViewer:BugReportCopyData()
	-- data is copied automatic by event, we only need to close window
	ZGV.BugReport:CloseBugWindow()
end

----------------- MISC

ZygorGuidesViewer.guidesets = {}
function ZygorGuidesViewer:DoMutex(m)
	if self.guidesets[m] then return true else self.guidesets[m]=true end
end


---------------------------------------------------------------------------------------------------
-- Autoaccept
---------------------------------------------------------------------------------------------------

function ZygorGuidesViewer:RegisterAutoaccept()
	if not self.RegisterAutoacceptTimer then
		self:Debug("Autoaccept - starting timer")
		self.RegisterAutoacceptTimer = ApolloTimer.Create(1, true, "RegisterAutoaccept", self)
	end
	if Apollo.GetAddon("Dialog") then
		self:Debug("Autoaccept - found dialog addon")
		self.RegisterAutoacceptTimer:Stop()
		Apollo.RegisterEventHandler("Dialog_ShowState", "OnDialog_ShowState", self)

		self.Popup = Apollo.LoadForm(self.xmlDoc, "AutoPopup", nil, self)
		if self.Popup == nil then
			Apollo.AddAddonErrorText(self, "Could not load the main window for some reason.")
			return
		end
		self.Popup:Show(false, false) 
		self.PopupAutoacceptLines = {}
	end
end

function ZygorGuidesViewer:ShowAutoacceptPopup(sText, iIcon, bOverride)
	ZGV.PopupAutoacceptTimer:Start()
	if bOverride then
		ZGV.PopupAutoacceptLines = {}
	end
	ZGV.PopupAutoacceptLines[sText] = true
	
	ZGV.Popup:Show(true, true) 
	local currentText = ""
	for text,_ in pairs(ZGV.PopupAutoacceptLines) do
		currentText = currentText .. text .. "\n"
	end
	ZGV.Popup:SetText(currentText)
	ZGV.PopupAutoacceptTimer:Start()
end

function ZygorGuidesViewer:HideAutoacceptPopup()
	ZGV.Popup:SetText("")
	ZGV.PopupAutoacceptLines = {}
	ZGV.Popup:Show(false, false) 
	ZGV.PopupAutoacceptTimer:Stop()
end

function ZygorGuidesViewer:SendToChat(text,source)
	if not source then source = "Zygor" end
	ChatSystemLib.PostOnChannel(ChatSystemLib.ChatChannel_Command, text, source)		
end


function ZygorGuidesViewer:OnDialog_ShowState(nState, nQuest)
	-- if shift is pressed, skip any magic
	if Apollo.IsShiftKeyDown() then return end

	-- if not enabled in config, skip any magic
	if not self.db.char.guide_autoaccept and not self.db.char.guide_autocomplete then return end

	local blacklistedQuests = { 
		[6894] = true, -- All Hail the Queen [GROUP 2+]
		[8832] = true, -- Larallen Sentinnel [GROUP 2+]
		-- Housing Bilboard quests
		[8941] = true,
		[8942] = true,
		[8943] = true,
		[8946] = true,
		[8947] = true,
		[8948] = true,
		[8949] = true,
		[8950] = true,
		[8951] = true,
	}

	if nQuest then 
		nQuestId = nQuest:GetId()
		-- if player abandoned the quest or is ignoring it, do not autoaccept
		if nQuest:GetState() == Quest.QuestState_Ignored then 
			if ZGV.db.char.guide_notify then self:SendToChat("Quest ignored, not autoaccepting") end
			return
		end 
	else 
		nQuestId = 0
	end

	if blacklistedQuests[nQuestId] then
		if ZGV.db.char.guide_notify then self:SendToChat("Autoaccept - quest blacklisted, skipping") end
		return
	end
	
	local tResponseList = DialogSys.GetResponses(nQuestId)
	if not tResponseList or #tResponseList == 0 then return end

	local responseAccept = nil
	local responseViewAccept = nil
	local responseReady = nil
	local responseComplete = nil
	local responseAcceptCount = 0
	local responseViewAcceptCount = 0
	local responseReadyCount = 0
	local responseCompleteCount = 0
	
	local counter = 0
	for key, response in ipairs(tResponseList) do
		local responseType = response:GetType()
		counter = counter + 1
		if responseType==DialogResponse.DialogResponseType_ViewQuestAccept or responseType==DialogResponse.DialogResponseType_QuestAccept then 
			responseAccept = key
			responseAcceptCount = responseAcceptCount + 1

			if self.db.char.guide_autoaccept then
				tResponseList[responseAccept]:Select()
			end

		elseif responseType==DialogResponse.DialogResponseType_ViewQuestComplete or responseType==DialogResponse.DialogResponseType_QuestComplete then 
			responseComplete = key
			responseCompleteCount = responseCompleteCount + 1
		end
	end

	if self.db.char.guide_autocomplete then
		if ZGV.Frame:FindChild("HiddenBagWindow"):GetTotalEmptyBagSlots() < 0 then
			if ZGV.db.char.guide_notify then self:SendToChat("No space in inventory, cannot autoselect reward") end
		elseif responseCompleteCount == 1 then
			--tResponseList[responseComplete]:Select()
			tResponseList[1]:Select()
		end
	end
	-- TODO: Add some display for autoreceived quest reward -- most likely nQuest:GetRewardData(), item:GetIcon(), Quest.Quest2RewardType enum
	-- TODO: Are there quests that can grant unique rewards that player already have?
	-- TODO: Full inventory? In combat?	
end
