local ZygorLib = {}
ZGV.Lib = ZygorLib

ZygorLib.knownQuests = {}
ZygorLib.knownQuestUpdateTime = 0
ZygorLib.knownMissions = {}
ZygorLib.knownZones = nil
ZygorLib.knownZonesByString = {}

require "ApolloTimer"


function ZygorLib:GetDistanceTo(x,z,y)
	local player = GameLib.GetPlayerUnit()
	if player then 
		local tPos = player:GetPosition()
		local dx = tPos.x-x
		local dz = tPos.z-z
		local dy = tPos.y-y
		local distance = math.sqrt(dx*dx + dz*dz + dy*dy)
		return math.floor(distance)
	end
end

function ZygorLib:GetAngleTo(x,z,y)
	local player = GameLib.GetPlayerUnit()
	if player then 
		local tPos = player:GetPosition()
		
		local deltaZ = math.floor(z) - math.floor(tPos.z)
		local deltaX = math.floor(x) - math.floor(tPos.x)

		local angleInDegrees = math.atan2(deltaX, -deltaZ) * 180 / math.pi

		return angleInDegrees%360
	end
end


function ZygorLib:GetQuest(qId)
	self:GetKnownQuests()
	return self.knownQuests[qId]
end

function ZygorLib:GetQuestStatus(qId)
	self:GetKnownQuests() --TODO: optimize? call less often, maybe?
	if self.knownQuests[qId] == nil then
		return 0
	end
	return self.knownQuests[qId]:GetState()
	--  Quest.QuestState_Accepted = 1,
	--  Quest.QuestState_Achieved = 2,
	--  Quest.QuestState_Completed = 3,
	--  Quest.QuestState_Botched = 4,
	--  Quest.QuestState_Mentioned = 5,
	--  Quest.QuestState_Ignored = 7,
	--  Quest.QuestState_Abandoned = 6,
	--  Quest.QuestState_Unknown = 0
end

function ZygorLib:GetKnownQuests()
	local categories = QuestLib.GetKnownCategories()
	for key, category in pairs(categories) do
		local episodes = category:GetEpisodes()
		for key, episode in pairs(episodes) do
			local episodeId = episode:GetId()
			local quests = episode:GetAllQuests()
			for key, quest in pairs(quests) do
				self.knownQuests[quest:GetId()] = quest
--				ZgWriter:Write('[' .. quest:GetId() .. '] = '.. episodeId .. ', -- ' .. quest:GetTitle())
			end
		end
	end
	return self.knownQuests
end

function ZygorLib:GetKnownMissions()
	local episodes = PlayerPathLib.GetEpisodes()
	for key, episode in pairs(episodes) do
		local missions = episode:GetMissions()
		for key, mission in pairs(missions) do
			self.knownMissions[mission:GetId()] = mission
--				ZgWriter:Write('[' .. quest:GetId() .. '] = '.. episodeId .. ', -- ' .. quest:GetTitle())
		end
	end
end

function ZygorLib:GetMissionStatus(qId) 
--[[ missions do not have a full state enums like quests,
     nor the GetState() method. Instead they have IsComplete, isStarted
     that returns true/false. ]]--
	self:GetKnownMissions() --TODO: optimize? call less often, maybe?

	if self.knownMissions[qId] == nil then return "unknown" end
	if self.knownMissions[qId]:GetName() == "" then return "unknown" end -- lack of name means we have not found this mission yet
	if self.knownMissions[qId]:IsComplete() then return "completed" end
	if self.knownMissions[qId]:IsStarted() then return "started" end
	return "available"
end

function ZygorLib:GetObjectiveStatus(qId,oId) -- oId is ZERO-BASED. Remember to adjust it!!!
	self:GetKnownQuests() --TODO: optimize?
	
	local quest=self.knownQuests[qId]

	if not quest then -- if we do not know the quest, we could not complete any objectives
		return false, 0
	end
	if quest:GetState() == Quest.QuestState_Completed then-- if we completed the quest, we have completed its objectives
		return true, 100
	end
	-- TODO how will we handle ignored quests?

	local completed = quest:GetObjectiveCompleted(oId)
	local needed = quest:GetObjectiveNeeded(oId)
	
	return completed==needed, math.floor( completed / needed * 100 )
end


function ZygorLib:GetKnownLore() -- generate tables that will contain all lore known to the char
	ZygorLib.tZonesAtLoad = {}
	
	for key, tCurrZone in pairs(DatacubeLib.GetZonesWithDatacubes()) do
		ZygorLib.tZonesAtLoad[tCurrZone.nZoneId] = tCurrZone
	end

	for key, tCurrZone in pairs(DatacubeLib.GetZonesWithJournals()) do
		ZygorLib.tZonesAtLoad[tCurrZone.nZoneId] = tCurrZone
	end

	for key, tCurrZone in pairs(DatacubeLib.GetZonesWithTales()) do
		ZygorLib.tZonesAtLoad[tCurrZone.nZoneId] = tCurrZone
	end
	
	ZygorLib.knownLore = {}
	ZygorLib.knownLoreByZoneName = {}
	for key, zone in pairs(ZygorLib.tZonesAtLoad) do
		local cubes = DatacubeLib.GetTotalDatacubesForZone(zone.nZoneId) or 0
		local journals = DatacubeLib.GetTotalJournalsForZone(zone.nZoneId) or 0
		local tales = DatacubeLib.GetTotalTalesForZone(zone.nZoneId) or 0

		local known_cubes = DatacubeLib.GetJournalsForZone(zone.nZoneId) or {}
		local known_journals = DatacubeLib.GetDatacubesForZone(zone.nZoneId) or {}	
		local known_tales = DatacubeLib.GetTalesForZone(zone.nZoneId) or {}	
		
		ZygorLib.knownLoreByZoneName[zone.strName] = {
			["zone"] = zone, 
			["zone_cubes"] = cubes, 
			["zone_journals"] = journals, 
			["zone_tales"] = tales, 
			["known_cubes"] = known_cubes, 
			["known_journals"] = known_journals, 
			["known_tales"] = known_tales
			}
						
		for key, lore  in pairs(known_cubes) do
			ZygorLib.knownLore[lore["nDatacubeId"]] = lore
		end
		for key, lore  in pairs(known_journals) do
			ZygorLib.knownLore[lore["nDatacubeId"]] = lore
		end
		for key, lore  in pairs(known_tales) do
			ZygorLib.knownLore[lore["nDatacubeId"]] = lore
		end
	end
	
	return ZygorLib.knownLore, ZygorLib.knownLoreByZoneName
end
	
function ZygorLib:GetLoreStatus(lId) -- is complete
	if ZygorLib.knownLore[lId] == nil then -- TODO check how lore tidbits with more than one part work, and even if they exist
		return false
	end
	return ZygorLib.knownLore[lId]["bIsComplete"]
end

function ZygorLib:GetItemCount(iId) -- 
	local player = GameLib.GetPlayerUnit()  if not player then return end
	local items = player:GetInventoryItems()
	local count = #items
	local counter = 0
	
	for index, item in pairs(items) do
		if item["itemInBag"]:GetItemId() == iId then
			counter = counter + item["itemInBag"]:GetStackCount()
		end
	end
	
	return counter	
end





function ZygorLib:RegisterGetKnownZones()
	if not self.RegisterGetKnownZonesTimer then
		self.RegisterGetKnownZonesTimer = ApolloTimer.Create(1, true, "RegisterGetKnownZones", self)
	end
	if not ZGV.Frame then return end
	local mapWindow = ZGV.Frame:FindChild("HiddenZoneMapWindow")
	if not mapWindow then return end
	local mapWindowGetAllZoneInfo = mapWindow:GetAllZoneInfo()
	if not mapWindowGetAllZoneInfo then return end
	if #mapWindowGetAllZoneInfo<5 then return end

	ZygorLib:GetKnownZones()
	self.RegisterGetKnownZonesTimer:Stop()
end
ZygorLib:RegisterGetKnownZones()

function ZygorLib:GetKnownZones()
	self.knownZones = {}
	local mapWindow = ZGV.Frame:FindChild("HiddenZoneMapWindow")
	local mapzones = mapWindow:GetAllZoneInfo()
	for key, zone in pairs(mapzones) do
		local continent = mapWindow:GetContinentInfo(zone.continentId)
		self.knownZones[zone.id] = { 
			["id"] = zone.id,
			["strFolder"] = zone.strFolder,
			["strName"] = zone.strName,
			["continent"] = continent.strName,
			["continentId"] = zone.continentId,
			["parentZoneId"] = zone.parentZoneId,
			["zone"] = zone
		}
		self.knownZones[zone.strFolder] = { 
			["id"] = zone.id,
			["strFolder"] = zone.strFolder,
			["strName"] = zone.strName,
			["continent"] = continent.strName,
			["continentId"] = zone.continentId,
			["parentZoneId"] = zone.parentZoneId,
			["zone"] = zone
		}
	end

	-- TODO: Unhack
	self.knownZones[39] = { 
		["id"] = 39,
		["strFolder"] = "DominionArkShipTutorialCryogenics",
		["strName"] = "The Destiny",
		["continent"] = "Dominion Ark Ship",
		["continentId"] = 30,
		["parentZoneId"] = 0,
		["zone"] = {}
	}
	self.knownZones["DominionArkShipTutorialCryogenics"] = self.knownZones[39]
	return self.knownZones
end


function ZygorLib:GetZone(zId)
	local zone = self.knownZones[zId]
	if not zone then
		local zName=""
		if not tonumber(zId) then zName,zId=zId,nil end
		return zId,zName,nil,"","",""
	else 
		return zone.id, zone.strName, zone.continentId, zone.continent, zone.strFolder
	end
end

-- GetObjectiveXxxxx(n) - n is zero-based; in guides we use 1-based. DON'T FORGET TO SHIFT IT.
function ZygorLib:PrintQuests()
	for qi=0,99 do
		local quest = QuestLib.GetQuest(qi)
		if quest then
			local title = quest:GetTitle()
			local id = quest:GetId()
			Print(("#%d - %s ## %s"):format(qi,title,id))
			for oi=0,quest:GetObjectiveCount() do
				local shdesc = quest:GetObjectiveShortDescription(oi)
				if shdesc~="" then
					local completed = quest:GetObjectiveCompleted(oi)
					local needed = quest:GetObjectiveNeeded(oi)
					Print(("  obj %d: %s (%s/%s)"):format(oi+1,shdesc,completed,needed))
				end
			end
		end
	end
end


function ZygorLib:GetARGBasHex(a, r, g, b)
	return string.format("%02x%02x%02x%02x", math.floor(a * 255), math.floor(r * 255), math.floor(g * 255), math.floor(b * 255))
end

function ZygorLib:gradient3(perc,ar,ag,ab,br,bg,bb,cr,cg,cb, middle)
	if perc >= 1 then
		return cr,cg,cb
	elseif perc<=0 then
		return ar,ag,ab
	else
		if perc<=middle then
			perc=perc/middle
			return ar+(br-ar)*perc, ag+(bg-ag)*perc, ab+(bb-ab)*perc
		else
			perc=(perc-middle)/(1-middle)
			return br+(cr-br)*perc, bg+(cg-bg)*perc, bb+(cb-bb)*perc
		end
	end
end

function ZygorLib:MakeRedGreenScale(point, middle)
	local r,g,b = ZygorLib:gradient3(point, 1,0,0, 1,1,0, 0,1,0, middle or 0.5)
	return ZygorLib:GetARGBasHex(1, r, g, b)
end

