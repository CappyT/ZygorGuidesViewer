local ZGV = ZygorGuidesViewer   if not ZGV then return end

local BugReport = {}
ZGV.BugReport = BugReport

function BugReport:OpenBugWindow()
	if not self.wndBugReport then
		if not self.xmlDoc then
			self.xmlDoc = XmlDoc.CreateFromFile(ZGV.INFO.assetfolder.."\\BugReport.xml")
			if not self.xmlDoc then Print("Cannot open "..ZGV.INFO.assetfolder.."\\BugReport.xml") end
			self.xmlDoc:RegisterCallback("OpenBugWindow", self)
			return
		end
		if not self.xmlDoc:IsLoaded() then return end --shouldn't happen like ever
		self.wndBugReport  = Apollo.LoadForm(self.xmlDoc, "BugReport", nil, ZGV)
		if self.wndBugReport  == nil then
			Apollo.AddAddonErrorText(self, "Could not load the bug report window for some reason.")
			return
		end
	else
		if self.wndBugReport:IsShown() then self.wndBugReport  :Show(false) return end
		-- has to be like that, otherwise it'd hide the window immediately after creating it
	end

	local bugText = ""
	local t=ZGV.INFO.strLastModifiedSort
	bugText = bugText .. "\nZGV version: "..ZGV.INFO.version.."  updated "..t:sub(1,4).."-"..t:sub(5,6).."-"..t:sub(9,10).." "..t:sub(11,12)..":"..t:sub(13,14)

	if ZGV.CurrentGuide then
		bugText = bugText .. "\nCurrent guide: " .. ZGV.CurrentGuide.title_short
		local step = ZGV.CurrentGuide:GetCurStep()
		bugText = bugText .. "\nCurrent step: " .. step["num"]
		for key,goal in ipairs(step["goals"]) do
			local iscomplete,ispossible,progress,desc = goal:IsCompleteCheck()
			bugText = bugText .. "\nGoal " .. goal.num .. ": " .. goal.action

			if goal:IsCompletable() then bugText = bugText .. " [" .. 
				(iscomplete and "complete" or "incomplete") .. "," ..
				(ispossible and "possible" or "impossible") .. "," ..
				(progress and tostring(progress) or "no progress") .. "," ..
				(desc or "")
				.. "]"
			else bugText = bugText .. " [passive]"
			end

			bugText = bugText .. " - " .. (goal:GetText() or " ")
		end
	else 
		bugText = bugText .. "\nCurrent guide: NO GUIDE LOADED"
	end
		
		
	local player = GameLib.GetPlayerUnit()
	local Pl_race, Pl_class, Pl_path, Pl_faction
	if player then
		local faction = player:GetFaction()
		if faction == Unit.CodeEnumFaction.ExilesPlayer then Pl_faction = "Exiles" end
		if faction == Unit.CodeEnumFaction.DominionPlayer then Pl_faction = "Dominion" end
						
		local race = player:GetRaceId()
		for name,id in pairs(GameLib.CodeEnumRace) do if race==id then Pl_race=name end end
		
		local path = player:GetPlayerPathType()
		if path == PlayerPathLib.PlayerPathType_Explorer then Pl_path = "Explorer" end
		if path == PlayerPathLib.PlayerPathType_Scientist then Pl_path = "Scientist" end
		if path == PlayerPathLib.PlayerPathType_Settler then Pl_path = "Settler" end
		if path == PlayerPathLib.PlayerPathType_Soldier then Pl_path = "Soldier" end
		
		local class = player:GetClassId()
		for name,id in pairs(GameLib.CodeEnumClass) do if class==id then Pl_class=name end end
		
		bugText = bugText .. "\n\nPlayer: " .. Pl_faction .. " " .. Pl_race .. " " .. Pl_class .. " " .. Pl_path
		bugText = bugText .. "\nLevel: " .. player:GetLevel()

		local tPos = player:GetPosition()
		local map = GameLib.GetCurrentZoneMap()
		if map then 
			id, strName, continentId, continent, strFolder = ZGV.Lib:GetZone(map.id)
			bugText = bugText .. "\n\nMap: " .. strName .. " ("..strFolder .." "..id..")  continent ".. (continentId or "")
						
			if map.parentZoneId ~= 0 then 
				id, strName, continentId, continent, strFolder = ZGV.Lib:GetZone(map.parentZoneId )
				bugText = bugText .. "\nParent map: " .. strName .. " ("..strFolder .." "..id..") continent "..continentId
			end
		end
		bugText = bugText .. "\nCoords: x " .. math.floor(tPos.x) .. ", z " .. math.floor(tPos.z) .. ", y " .. math.floor(tPos.y)
		
		local mapDump = GameLib.GetCurrentZoneMap()
		bugText = bugText .. "\n\nMap object: "
		for k,v in pairs(mapDump) do
			bugText = bugText .. "\n" .. k .. " - " .. v
		end
		
	end

	bugText = bugText .. "\n\nQuests:"	
	for qi=0,99 do
		local quest = QuestLib.GetQuest(qi)
		if quest then
			local title = quest:GetTitle()
			local id = quest:GetId()
			bugText = bugText .. "\n" .. ("#%d - %s ## %s"):format(qi,title,id)
			for oi=0,quest:GetObjectiveCount() do
				local shdesc = quest:GetObjectiveShortDescription(oi)
				if shdesc~="" then
					local completed = quest:GetObjectiveCompleted(oi)
					local needed = quest:GetObjectiveNeeded(oi)
					bugText = bugText .. "\n" .. ("  obj %d: %s (%s/%s)"):format(oi+1,shdesc,completed,needed)
				end
			end
		end
	end

	bugText = bugText .. "\n"
	
	for k,text in pairs(ZGV.Log.entries) do
		bugText = bugText .. "\n" .. text
	end
								
	self.wndBugReport:FindChild("BugReportContainer"):FindChild("BugInfo"):SetText(bugText)
	
	self.wndBugReport:Invoke() -- show the window
	self.wndBugReport:FindChild("BugReportContainer"):FindChild("BugCopy"):SetActionData(GameLib.CodeEnumConfirmButtonType.CopyToClipboard, bugText and #bugText>0 and bugText  or " ")
end

function BugReport:CloseWindow()
	self.wndBugReport:Show(false)
end