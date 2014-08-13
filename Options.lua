local ZGV = ZygorGuidesViewer   if not ZGV then return end

local Options = {}
ZGV.Options = Options

Options.menuObjects = {
	{ ["name"] = "Guide viewer", ["window"] = "wndViewerWindow" },
	{ ["name"] = "Waypoint", ["window"] = "wndArrowWindow" },
}

Options.guideColors = {
	valid = ApolloColor.new("ff2d862d"), 
	suggested = ApolloColor.new("ffb38f2d"), 
	invalid = ApolloColor.new("ffa10000"), 
	obsolete = ApolloColor.new("ff595959"), 
	white = ApolloColor.new("ffffffff"),
	default = ApolloColor.new("ffffffff"),
	highlight = ApolloColor.new("ff555555"),
	transparent = ApolloColor.new("00000000"),
} 


Options.settings = {
	{ name="guidename", scope="char", ui=nil, default=nil },
	{ name="step", scope="char", ui=nil, default=nil },
	{ name="stephistory", scope="char", ui=nil, default={} },
	
	{ name="guide_show", scope="char", ui="checkbox", default=true },
	{ name="guide_hide_in_combat", scope="char", ui="checkbox", default=false },
	{ name="guide_opacity", scope="char", ui="slider", default=1 },
	{ name="guide_lock", scope="char", ui=nil, default=false },
	{ name="guide_highlight", scope="char", ui="checkbox", default=false },

	{ name="guide_autoaccept", scope="char", ui="checkbox", default=false },
	{ name="guide_autocomplete", scope="char", ui="checkbox", default=false },
	{ name="guide_notify", scope="char", ui="checkbox", default=false },

	{ name="guide_showmission", scope="char", ui="checkbox", default=true },

	{ name="arrow_show", scope="char", ui="checkbox", default=true },
	{ name="arrow_hide", scope="char", ui="checkbox", default=true },
	{ name="arrow_lock", scope="char", ui="checkbox", default=false },
	{ name="arrow_color", scope="char", ui="checkbox", default=true },
	{ name="arrow_opacity", scope="char", ui="slider", default=1 },

	{ name="visible", scope="char", ui=nil, default=true },


	{ name="debug", scope="char", ui=nil, default=false },
}

Options.dbscopes = {
	[GameLib.CodeEnumAddonSaveLevel.General]="global",
	[GameLib.CodeEnumAddonSaveLevel.Account]="account",
	[GameLib.CodeEnumAddonSaveLevel.Realm]="realm",
	[GameLib.CodeEnumAddonSaveLevel.Character]="char",
}

function Options:OnRestore(eType, tSavedData)
	-- save char data to self.db.char, account data to self.db.account, etc
	local dbgroup = self.dbscopes[eType]
	ZGV:Debug("restore "..dbgroup)
	
	for i,option in ipairs(self.settings) do
		if option.scope==dbgroup then
			if tSavedData[option.name]==nil then tSavedData[option.name]=option.default end
		end
	end
	
	ZGV.db[dbgroup] = tSavedData

	if dbgroup=="account" then ZGV.db.profile = tSavedData end  -- lame, but we use that :/

	if tSavedData.guide_show ~=nil and ZGV.Viewer.Frame then 
		ZGV.Viewer.Frame:Invoke() 
	end

	if tSavedData.windowpos and ZGV.Viewer.Frame then
  		p1, p2, p3, p4 = unpack(tSavedData.windowpos)
		ZGV.Viewer.Frame:SetAnchorOffsets(p1, p2, p1+320, p2)
		-- We can't use all four saved vals for positioning, since if window ever gets resized by us in
		-- xml, old position will be used and our window will be stretched/cut to fit those
		-- Instead, let's grab top and left, and add width that we know from editing this.
		-- Height is calculated when we display guide.
	end

	if tSavedData.guide_lock~=nil and ZGV.Viewer.Frame then 
		ZGV.Viewer.Frame:FindChild("ZGVContainer"):FindChild("ZGVLockButton"):Show(tSavedData.guide_lock)
		ZGV.Viewer.Frame:FindChild("ZGVContainer"):FindChild("ZGVUnlockButton"):Show(not tSavedData.guide_lock)
		ZGV.Viewer.Frame:SetStyle("Moveable", not tSavedData.guide_lock)
	end

end

function Options:OnSave(eType)
	local dbgroup = self.dbscopes[eType]
	
	if dbgroup=="char" then
		ZGV.db.char.windowpos = {ZGV.Viewer.Frame:GetAnchorOffsets()}
		ZGV.db.char.arrowpos = {ZGV.Pointer.wndArrow:GetAnchorOffsets()}
		ZGV.db.char.buttonpos = {ZGV.MinimapButton:GetAnchorOffsets()}
	end

	return ZGV.db[dbgroup]
end

function Options:OnConfigure() -- called by wildstar on "configure" button in addon list, via ZGV:OnConfigure
	if not self.wndConfig then
		self.xmlDoc = XmlDoc.CreateFromFile("Options.xml")
		self.wndConfig = Apollo.LoadForm(self.xmlDoc, "OptionsMain", nil, self)
		if self.wndConfig == nil then
			Apollo.AddAddonErrorText(self, "Could not load the config window for some reason.")
			return
		end
				
		local targetWindow = self.wndConfig:FindChild("OptionInnerContainer")

		self.wndViewerWindow = Apollo.LoadForm(self.xmlDoc, "OptionViewerWindow", targetWindow , self)
		if self.wndViewerWindow == nil then
			Apollo.AddAddonErrorText(self, "Could not load the config window1 for some reason.")
			return
		end
		self.wndArrowWindow = Apollo.LoadForm(self.xmlDoc, "OptionArrowWindow", targetWindow , self)
		if self.wndArrowWindow == nil then
			Apollo.AddAddonErrorText(self, "Could not load the config window2 for some reason.")
			return
		end
		self.wndGuidesWindow = Apollo.LoadForm(self.xmlDoc, "OptionGuidesWindow", targetWindow , self)
		if self.wndGuidesWindow == nil then
			Apollo.AddAddonErrorText(self, "Could not load the config window3 for some reason.")
			return
		end

		self.wndConfigMenu = Apollo.LoadForm(self.xmlDoc, "OptionConfigMenu", targetWindow , self)
		if self.wndConfigMenu == nil then
			Apollo.AddAddonErrorText(self, "Could not load the config window1 for some reason.")
			return
		end

		self.wndGuidesMenu = Apollo.LoadForm(self.xmlDoc, "OptionGuidesMenu", targetWindow , self)
		if self.wndGuidesMenu == nil then
			Apollo.AddAddonErrorText(self, "Could not load the config window1 for some reason.")
			return
		end
		
		self.wndConfig:AddEventHandler("WindowClosed", "OnClose", self)	

		local winw, winh = Apollo.GetScreenSize()
		local op1, op2, op3, op4 = self.wndConfig:GetAnchorOffsets()
		local opw = op3 - op1 -10
		local oph = op4 - op2

		local op_top = math.max(winh/2 - oph/2,0)
		local op_left = math.max(winw/2 - opw/2,0)
		local op_bottom = math.min(winh/2 + oph/2,winh)
		local op_right = math.min(winw/2 + opw/2,winw)

		self.wndConfig:SetAnchorOffsets(op_left, op_top, op_right, op_bottom)		
	else
		if self.wndConfig:IsShown() and not self.wndGuidesWindow:IsShown() then self.wndConfig:Show(false) return end
		-- has to be here, otherwise it'd hide the window immediately after creating it
	end

	self:ShowViewerWindow()

	self.wndConfig:Invoke() -- show the window
	self.wndViewerWindow:Invoke() -- show the window

	self.wndViewerWindow:FindChild("guide_show"):SetCheck(ZGV.db.char["guide_show"]) 
	self.wndViewerWindow:FindChild("guide_hide_in_combat"):SetCheck(ZGV.db.char["guide_hide_in_combat"]) 
	self.wndViewerWindow:FindChild("guide_opacity"):SetValue(ZGV.db.char["guide_opacity"]) 
	self.wndViewerWindow:FindChild("guide_highlight"):SetCheck(ZGV.db.char["guide_highlight"]) 

	self.wndViewerWindow:FindChild("guide_autoaccept"):SetCheck(ZGV.db.char["guide_autoaccept"]) 
	self.wndViewerWindow:FindChild("guide_autocomplete"):SetCheck(ZGV.db.char["guide_autocomplete"]) 
	self.wndViewerWindow:FindChild("guide_notify"):SetCheck(ZGV.db.char["guide_notify"]) 

	self.wndViewerWindow:FindChild("guide_showmission"):SetCheck(ZGV.db.char["guide_showmission"]) 


	self.wndArrowWindow:FindChild("arrow_show"):SetCheck(ZGV.db.char["arrow_show"]) 
	self.wndArrowWindow:FindChild("arrow_hide"):SetCheck(ZGV.db.char["arrow_hide"]) 
	self.wndArrowWindow:FindChild("arrow_lock"):SetCheck(ZGV.db.char["arrow_lock"]) 
	self.wndArrowWindow:FindChild("arrow_color"):SetCheck(ZGV.db.char["arrow_color"]) 
	self.wndArrowWindow:FindChild("arrow_opacity"):SetValue(ZGV.db.char["arrow_opacity"]) 
		
	self.wndConfig:FindChild("label_version"):SetText(ZGV.INFO and ZGV.INFO.version or "????") 
	
	--[[
	self.wndConfig:FindChild("var1"):SetText(self.configSettings["var1"])
	self.wndConfig:SetRadioSel("radio1",self.configSettings["radio1"])
	--]]
end

function Options:OnClose() -- restore unsaved values (clear preview)
	self.ConfigSaveVars()
	self.wndConfig:Show(false)
end

function Options:OnCancel()
	self.wndConfig:Show(false)
end


function Options:SetupConfig(target)
	
	local target = target or self.menuObjects[1].window

	self.wndConfigMenu:Show(true)
	self.wndGuidesWindow:Show(false)
	self.wndGuidesMenu:Show(false)

	local targetWindow = self.wndConfigMenu 
	
	targetWindow:DestroyChildren()
	for key, object in pairs(self.menuObjects) do
		local menuItem = Apollo.LoadForm(self.xmlDoc , "OptionConfigMenuItem", targetWindow , self)
		menuItem:Show(true, true)
		menuItem:FindChild("OptionConfigMenuItemText"):SetText(object.name)
		menuItem:FindChild("OptionConfigMenuItemText"):SetData(object.window)
		if object.window == target then
			menuItem:SetBGColor(ApolloColor.new("FFFF555555"))
		end
	end

	targetWindow:ArrangeChildrenVert()

	for key, object in pairs(self.menuObjects) do
		self[object.window]:Show(false)
	end	

	self[target]:Show(true)
end

function Options:OnMenuSelect( wndHandler, wndControl, eMouseButton )
	self:SetupConfig(wndControl:GetData())
end



function Options:ShowArrowWindow()
		self:SetupConfig("wndArrowWindow")
end

function Options:ShowViewerWindow()
		self:SetupConfig("wndViewerWindow")
end

function Options:ShowGuidesWindow(disptype)
	if not disptype then disptype = ZGV.CurrentGuide and ZGV.CurrentGuide.type or "LEVELING" end

	local function showGuideDetails(i)
		local displayTitle = ZGV.registeredguides[i].title_short or ""
		local displayInfo = ZGV.registeredguides[i].extra.description or ""

		self.wndGuidesWindow:FindChild("OptionGuidesWindowTitle"):SetText(displayTitle)
		self.wndGuidesWindow:FindChild("OptionGuidesWindowInfo"):SetText(displayInfo)

		if ZGV.registeredguides[i].extra.image then 
			self.wndGuidesWindow:SetBGColor(ApolloColor.new("ffffffff"))
			self.wndGuidesWindow:SetSprite(ZGV.registeredguides[i].extra.image)
		else
			self.wndGuidesWindow:SetBGColor(ApolloColor.new("ff333333"))
			self.wndGuidesWindow:SetSprite("BasicSprites:WhiteFill")
		end
	end
	
	self:SetupConfig("wndGuidesWindow")
	self.wndConfigMenu:Show(false)
	self.wndGuidesMenu:Show(true)

	local otherCategories = {}
			
	local targetWindow = self.wndGuidesMenu
	targetWindow:DestroyChildren()

	if disptype ~= ZGV.Utils.GetFaction() then
		local guideFolder = Apollo.LoadForm(self.xmlDoc , "OptionGuidesFolder", targetWindow , self)
		guideFolder:Show(true, true)
		guideFolder:SetName(ZGV.Utils.GetFaction())
		guideFolder:FindChild("OptionGuidesFolderText"):SetText(disptype)
		guideFolder:SetData(ZGV.Utils.GetFaction())
		guideFolder:FindChild("OptionGuidesFolderBack"):Show(true)
		guideFolder:FindChild("OptionGuidesFolderButton"):Show(false)
	end
	
	for i=1,#ZGV.registeredguides do
		if ZGV.registeredguides[i]["type"]~= disptype then
			otherCategories[ZGV.registeredguides[i]["type"]] = true
		else
			local guideItem = Apollo.LoadForm(self.xmlDoc , "OptionGuidesItem", targetWindow , self)
			local guideStatus = ZGV.registeredguides[i]:GetStatus()
			guideItem:Show(true, true)
			guideItem:SetName(ZGV.registeredguides[i]["title"])
			guideItem:FindChild("OptionGuidesItemText"):SetText(ZGV.registeredguides[i]["title_short"])
			guideItem:FindChild("OptionGuidesItemText"):SetData(ZGV.registeredguides[i]["title"])
			guideItem:SetData({state="transparent", text=guideStatus, disptype=ZGV.registeredguides[i]["type"]})
			guideItem:FindChild("OptionGuidesItemText"):SetTextColor(self.guideColors[guideStatus])

			if self.selectedGuide  and self.selectedGuide  == ZGV.registeredguides[i]["title"] then
				guideItem:FindChild("OptionGuidesItemText"):SetTextColor(self.guideColors.white)
				guideItem:SetBGColor(self.guideColors.highlight)
				guideItem:SetData({state="highlight", text="white"})
				showGuideDetails(i)	
			end
			
			if not self.selectedGuide and ZGV.CurrentGuide and ZGV.CurrentGuide.title == ZGV.registeredguides[i]["title"] then 
				guideItem:FindChild("OptionGuidesItemText"):SetTextColor(self.guideColors.white)
				guideItem:SetBGColor(self.guideColors[guideStatus])
				guideItem:SetData({state=guideStatus, text="white"})
				showGuideDetails(i)	
			end
		end
	end

	if disptype == ZGV.Utils.GetFaction() then
		for name,_ in pairs(otherCategories) do
			local guideFolder = Apollo.LoadForm(self.xmlDoc , "OptionGuidesFolder", targetWindow , self)
			guideFolder:Show(true, true)
			guideFolder:SetName(name)
			guideFolder:FindChild("OptionGuidesFolderText"):SetText(name)
			guideFolder:SetData(name)
		end
	end

	targetWindow:ArrangeChildrenVert()
end

function Options:ShowGuidesHome()
	self:ShowGuidesWindow(ZGV.Utils.GetFaction())
end


function Options:OnGuideFolderSelect( wndHandler, wndControl, eMouseButton, nLastRelativeMouseX, nLastRelativeMouseY, bDoubleClick, bStopPropagation )
	self:ShowGuidesWindow(wndControl:GetParent():GetData())
end


function Options:OnGuideSelect( wndHandler, wndControl, eMouseButton, nLastRelativeMouseX, nLastRelativeMouseY, bDoubleClick, bStopPropagation )
	self.selectedGuide = wndControl:GetData()
	self:ShowGuidesWindow(wndHandler:GetParent():GetData().disptype)
	if bDoubleClick then
		ZGV:SetGuide(self.selectedGuide)
		self.wndConfig:Show(false) -- hide the window
	end
end

function Options:OnGuideConfirm( wndHandler, wndControl, eMouseButton )
	ZGV:SetGuide(self.selectedGuide)
	self.wndConfig:Show(false) -- hide the window
end



function Options:GuideOpacity( wndHandler, wndControl, fNewValue, fOldValue )
	ZGV.db.char["guide_opacity"] = fNewValue
	ZGV.Viewer.Frame:SetOpacity(fNewValue)
end

function Options:ArrowOpacity( wndHandler, wndControl, fNewValue, fOldValue )
	ZGV.db.char["arrow_opacity"] = fNewValue
	ZGV.Pointer.wndArrow:SetOpacity(fNewValue)
end


function Options:ConfigSaveVars( wndHandler, wndControl, eMouseButton )
	for key, var in pairs(Options.settings) do
		value = nil
		if var["ui"] then
			if var["ui"]=="checkbox" then
				value = self.wndConfig:FindChild(var["name"]):IsChecked()
			elseif var["ui"]=="string" then
				value = self.wndConfig:FindChild(var["name"]):GetText()
			elseif var["ui"]=="radio" then
				value = self.wndConfig:GetRadioSel(var["name"])
			elseif var["ui"]=="slider" then	
				value = self.wndConfig:FindChild(var["name"]):GetValue()
			end
			ZGV.db[var["scope"]][var["name"]] = value
		end
	end
	
	ZGV.Frame:Show(ZGV.db.char.guide_show)
	if ZGV.Pointer.wndArrow then ZGV.Pointer.wndArrow:SetStyle("Moveable", not ZGV.db.char.arrow_lock) end

	self.wndViewerWindow:Show(false)
	self.wndArrowWindow:Show(false)
	self.wndGuidesWindow:Show(false)
	self.wndConfig:Show(false)
end

function Options:OpenBugWindow()
	ZGV.BugReport:OpenBugWindow()
end







function Options:UpdateState(wndHandler)
	local name = wndHandler:GetName()
	local state = wndHandler:IsChecked()
	ZGV.db.char[name] = state
	return state
end
	
function Options:guide_hide_in_combat( wndHandler, wndControl, eMouseButton )
	self:UpdateState(wndHandler)
end

function Options:arrow_show( wndHandler, wndControl, eMouseButton )
	self:UpdateState(wndHandler)
end

function Options:arrow_color( wndHandler, wndControl, eMouseButton )
	self:UpdateState(wndHandler)
end

function Options:arrow_hide( wndHandler, wndControl, eMouseButton )
	self:UpdateState(wndHandler)
end

function Options:guide_show( wndHandler, wndControl, eMouseButton )
	self:UpdateState(wndHandler)
	ZGV.Frame:Show(ZGV.db.char.guide_show)
end

function Options:guide_highlight( wndHandler, wndControl, eMouseButton )
	self:UpdateState(wndHandler)
	ZGV.Viewer:Update()
end

function Options:guide_autoaccept( wndHandler, wndControl, eMouseButton )
	self:UpdateState(wndHandler)
end

function Options:guide_autocomplete( wndHandler, wndControl, eMouseButton )
	self:UpdateState(wndHandler)
end

function Options:guide_notify( wndHandler, wndControl, eMouseButton )
	self:UpdateState(wndHandler)
end

function Options:guide_showmission( wndHandler, wndControl, eMouseButton )
	self:UpdateState(wndHandler)
end



function Options:arrow_lock( wndHandler, wndControl, eMouseButton )
	self:UpdateState(wndHandler)
	if ZGV.Pointer.wndArrow then ZGV.Pointer.wndArrow:SetStyle("Moveable", not ZGV.db.char.arrow_lock) end
end


function Options:OnHighlightStart( wndHandler, wndControl, x, y )
	local object = wndHandler:GetParent()
	object:SetBGColor(self.guideColors.highlight)
	object:FindChild("OptionGuidesItemText"):SetTextColor(self.guideColors.white)
end

function Options:OnHighlightStop( wndHandler, wndControl, x, y )
	local object = wndHandler:GetParent()
	local state = object:GetData().state
	local textstate = object:GetData().text
	object:SetBGColor(self.guideColors[state])
	object:FindChild("OptionGuidesItemText"):SetTextColor(self.guideColors[textstate])
end

function Options:OpenBugWindow()
	ZGV.BugReport:OpenBugWindow()
end
