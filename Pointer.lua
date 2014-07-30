local ZGV = ZygorGuidesViewer   if not ZGV then return end

local tinsert,tremove,sort,min,max,floor,type,pairs,ipairs,class = table.insert,table.remove,table.sort,math.min,math.max,math.floor,type,pairs,ipairs,class

local Pointer = {}

ZGV.Pointer = Pointer

Pointer.spriteRate = 10 -- rate of refresh for arrow, needs to be high
Pointer.spriteCount = 150 -- how many frames are in used sprite
Pointer.waypoints = {}

local function add_default_data(data)
	local tmp_way = {}

	tmp_way.strIcon="CRB_WarriorSprites:xx_RMF"
	tmp_way.bNeverShowOnEdge = false
	tmp_way.bFixedSizeLarge = true
	tmp_way.type = "way"

	for k,v in pairs(data) do tmp_way[k]=v end

	--if not data.title then data.title="Waypoint" end
	--if not tmp_data.icon then tmp_data.icon=Pointer.Icons.greendot end
	
	return tmp_way
end

function Pointer:SetWaypoint (c,x,z,y,data,arrow)
	local way = add_default_data(data)  -- Clone! so this is tmp_data from above, basically.

	if way.cleartype and way.type then  self:ClearWaypoints(way.type)  end
	
	czm = GameLib.GetCurrentZoneMap()
	if czm~=nil then 
		if czm["parentZoneId"] ~= 0 then
			currentMap = czm["parentZoneId"]
		else 
			currentMap = czm["id"]
		end
		self.currentContinent = czm["continentId"]
		if not c then
			c = currentMap
		end
	end

	way.c = c
		
	local displayMapContinent = ""
--	if c ~= currentMap then
		local _, mapName, continentId, continentName = ZGV.Lib:GetZone(c)
		way.distanceFullText = "<T TextColor=\"ffffcccc\">Go to "..continentName.." - "..mapName.."\n</T>"
		if mapName == 0 then -- do not display if we do not know the map (old style coordinates parse)	
			displayMapContinent = ""
		end
--	end

	way.x,way.z,way.y = x,z,y
	
	way.title= way.arrowtitle or displayMapContinent ..way.title or ("%s %d,%d"):format("Continent "..way.c,way.x,way.z)

	--waypoint.type=data.type
	--waypoint.angle=data.angle	-- not needed, as that's set in GetMapMarker from data

	--waypoint:SetIcon(waypoint.icon)

	if way.type=="manual" then
		self.nummanual = self.nummanual + 1
	end

	tinsert(self.waypoints,way)
	way.n=#self.waypoints

	if arrow==nil then arrow=true end
	if arrow and (way.type=="manual" or way.type=="way" or way.type=="route" or way.type=="corpse") then
		self:ShowArrow(way)
	end

	--[[
	if waypoint.find_path then
		Pointer:Debug("Starting travel, since waypoint was find_path")
		self:FindTravelPath(waypoint)
	end
	--]]

	--if waypoint and waypoint.type~="ant" then Pointer:Debug("Waypoint set to map:"..waypoint.m.." floor:"..waypoint.f) end

	ZGV:Debug("Marking map at: %d %d %d",way.x or 0,way.z or 0,way.y or 0)

	self.zonemapAddon = self.minimapAddon or Apollo.GetAddon("ZoneMap") --API
	if self.zonemapAddon then 
		way.mapobject = ZoneMapLibrary.wndZoneMap and ZoneMapLibrary.wndZoneMap:AddObject(
			ZoneMapLibrary.eObjectTypeGroupMember,
			way,--{x=x,y=y,z=z},
			way.title,
			way,
			way
		) --API
	end -- can't add dots to custom zonemap. Yet?

	self.minimapAddon = self.minimapAddon or Apollo.GetAddon("MiniMap") --API
	if self.minimapAddon then
		way.minimapobject = self.minimapAddon.wndMiniMap:AddObject(
			ZoneMapLibrary.eObjectTypeGroupMember,
			way,--{x=x,y=y,z=z},
			way.title,
			way,
			way
		) --API
	 return end -- can't add dots to custom minimaps. Yet?

	--if data.findpath then  self:FindTravelPath(way)  end

	return waypoint
end


local dont_setwaypoint=false
function Pointer:ClearWaypoints (waytype)
	Pointer:Debug("ClearWaypoints %s",waytype or "all?")
	if waytype=="ant" then return Pointer:ClearWaypoints_ant(0) end
	local n=0
	local w=1
	dont_setwaypoint=true
	while w<=#self.waypoints do
		if not waytype or self.waypoints[w].type==waytype then
			n=n+1
			self:RemoveWaypoint(w)
		else
			w=w+1
		end
	end
	if self.current_waypoint and self.current_waypoint.type==waytype then self.current_waypoint=nil end
	dont_setwaypoint=false
	--if waytype=="path" then
	--	Pointer.TempWaypath = nil
	--end
	return n
end


function Pointer:RemoveWaypoint(waypoint)
	local wayn
	if type(waypoint)=="table" then
		if waypoint.n then
			wayn=waypoint.n
		else
			for w=1,#self.waypoints do if self.waypoints[w]==waypoint then wayn=w break end end
		end
	end
	if not wayn and type(waypoint)=="number" then  wayn=waypoint  waypoint=self.waypoints[wayn]  end
	if not waypoint then return end
	if not wayn then return end

	if self.zonemapAddon then 
		ZoneMapLibrary.wndZoneMap:RemoveObject(waypoint.mapobject)  --API
	end

	if self.minimapAddon then
		self.minimapAddon.wndMiniMap:RemoveObject(waypoint.minimapobject)  --API
	end

	--if waypoint.type~="ant" then print("Removing way "..waypoint.type) end

	if waypoint.type=="manual" then
		self.nummanual = max(0,self.nummanual - 1)
	end

	if waypoint.in_set then self:RemoveWaypointFromSets(waypoint) end

	--if self.ArrowFrame.waypoint==waypoint then self:HideArrow() end
	if self.DestinationWaypoint==waypoint then
		Pointer:Debug("Removed DestinationWaypoint")
		self.DestinationWaypoint=nil  self.TempWaypath=nil
		self:ClearSet("route")
	end

	table.remove(self.waypoints,wayn)
end



function Pointer:CycleWaypoint(delta,nocycle)

	local CS=ZGV.CurrentStep
	CS.current_waypoint_goal = CS.current_waypoint_goal or (delta>1 and 0 or #CS.goals)
	local oldgoal = CS.current_waypoint_goal
	local goal
	local cycles=0

	repeat 
		cycles=cycles+1
		if cycles>50 then return end  --cycling forever

		CS.current_waypoint_goal = CS.current_waypoint_goal + delta

		-- do cycle, or not
		if nocycle then CS.current_waypoint_goal = math.min(math.max(CS.current_waypoint_goal,1),#CS.goals) end
		if CS.current_waypoint_goal>#CS.goals then CS.current_waypoint_goal=1 end
		if CS.current_waypoint_goal<1 then CS.current_waypoint_goal=#CS.goals end
		
		if CS.current_waypoint_goal==oldgoal then return end --full cycle or no change at all, abort
		
		goal=CS.goals[CS.current_waypoint_goal]
		if not goal then return end

	until goal and goal.x and not goal.force_noway and goal:IsVisible()

	if self.waypoints then 
		for wi,way in ipairs(self.waypoints) do
			if way.goalnum==goal.num then
				self:ShowArrow(way)
				break
			end
		end
	end

	ZGV.Viewer:ScheduleUpdate()
	
end


function Pointer:SetArrowToFirstCompletableGoal()
--[[
passive
complete
passive
--]]

	local CSg=ZGV.CurrentStep.goals
	local last_complete = 0
	if not CSg or #CSg==0 or #self.waypoints==0 then return end
	-- step one : find any gotos after first completed one
	for wi,way in ipairs(self.waypoints) do
		if way.goalnum and CSg[way.goalnum] and CSg[way.goalnum].status=="complete" then
			last_complete = way.goalnum
		end
		
		if way.goalnum and CSg[way.goalnum] and CSg[way.goalnum].status~="complete" and way.goalnum > last_complete then
			ZGV.CurrentStep.current_waypoint_goal = way.goalnum
			return self:ShowArrow(way)
		end
	end

	-- step two : find first incomplete goto
	for wi,way in ipairs(self.waypoints) do
		if way.goalnum and CSg[way.goalnum] and CSg[way.goalnum].status=="incomplete" then
			ZGV.CurrentStep.current_waypoint_goal = way.goalnum
			return self:ShowArrow(way)
		end
	end
	
	-- step three : if everything else fails, return first goto	
	ZGV.CurrentStep.current_waypoint_goal = self.waypoints[1].goalnum
	return self:ShowArrow(self.waypoints[1])
end


function Pointer:SetUpArrow()
	if not self.timer then
		self.timer = ApolloTimer.Create(1/30, true, "OnArrowTimer", self)
	end

	if not self.wndArrow then
		self.wndArrow = Apollo.LoadForm("Pointer.xml", "PointerFrame", nil, self)
		if self.wndArrow == nil then
			Apollo.AddAddonErrorText(self, "Could not load the arrow window for some reason.")
			error("Cannot load pointer arrow.")
			return
		end
		self.wndArrow:Show(false)
		if ZGV.db.char.arrowpos then 
			p1, p2, p3, p4 = unpack(ZGV.db.char.arrowpos)
			if p1 < 0 and p2 < 0 then 
				self.wndArrow:SetAnchorOffsets(p1, p2, p3, p4) 
			end
		end
		ZGV.Pointer.wndArrow:SetStyle("Moveable", not ZGV.db.char.arrow_lock)
	end
end

function Pointer:ShowArrow(way)
	if not way then ZGV:Debug("Would show arrow: NONE!?") return end
	--ZGV:Print("Would show arrow: %d %d %d",way.x or 0,way.z or 0,way.y or 0)
	self.current_waypoint = way
	if not self.wndArrow then self:SetUpArrow() end
end

function Pointer:OnArrowTimer()
	local function alignString(object)
		local nLeft, nTop, nRight, nBottom = object :GetAnchorOffsets()
		object :SetAnchorOffsets(48-400, nTop, 48+400, nTop + 50)
		local wid,hei = object :SetHeightToContentHeight()
		local nLeft, nTop, nRight, nBottom = object :GetAnchorOffsets()
		object :SetAnchorOffsets(48-wid/2, nTop, 48+wid/2 + 5, nTop + 50)	
	end

	if not self.current_waypoint then self.wndArrow:Show(false) return end
	if ZGV.db.char.arrow_show == false then self.wndArrow:Show(false) return end
	if ZGV.db.char.arrow_hide and ZGV.Viewer.Frame:IsVisible() == false then self.wndArrow:Show(false) return end
	if ZGV.db.char.arrow_opacity then self.wndArrow:SetOpacity(ZGV.db.char.arrow_opacity)  end
	
	self.wndArrow:Show(true) 

	
	local step = ZGV.CurrentGuide:GetCurStep()
	local goaltext = step.goals[ZGV.Pointer.current_waypoint.goalnum]:GetText()

	local czm = GameLib.GetCurrentZoneMap()
	if czm~=nil then 
		local _, mapName, continentId, continentName = ZGV.Lib:GetZone(self.current_waypoint.c)
		self.current_waypoint.showdistanceOverride = (continentId ~= czm["continentId"])
 	end
	

	local ptext = self.wndArrow:FindChild("PointerText")
	local dtext = self.wndArrow:FindChild("DistanceText")

	ptext:SetText('<p Font = "DefaultButton">'..goaltext..'</p>')
	alignString(ptext)

	
	if self.current_waypoint.showdistanceOverride then
		self.wndArrow:FindChild("ArrowNormal"):SetSpriteRate(100)
		self.wndArrow:FindChild("ArrowSpecular"):SetSpriteRate(100)
		self.wndArrow:FindChild("ArrowArrivalNormal"):Show(false)
		dtext :SetAML(self.current_waypoint.distanceFullText)
		alignString(dtext)
		return
	else 		
		self.wndArrow:FindChild("ArrowNormal"):SetSpriteRate(1/self.spriteRate)
		self.wndArrow:FindChild("ArrowSpecular"):SetSpriteRate(1/self.spriteRate)
	end

	local distance = ZGV.Lib:GetDistanceTo(self.current_waypoint.x,self.current_waypoint.z,self.current_waypoint.y)
	if distance < 3 then
		dtext:SetAML("<p Align='center'></p>")
	else
		dtext:SetAML("<p Align='center'>"..distance.."m</p>")
		alignString(dtext)
	end

	local distance = ZGV.Lib:GetDistanceTo(self.current_waypoint.x,self.current_waypoint.z,self.current_waypoint.y)

	if distance < 3 then
		self.wndArrow:FindChild("ArrowSpecular"):Show(false)
		self.wndArrow:FindChild("ArrowNormal"):Show(false)
		self.wndArrow:FindChild("ArrowArrivalNormal"):Show(true)
	
	else 
		self.wndArrow:FindChild("ArrowSpecular"):Show(true)
		self.wndArrow:FindChild("ArrowNormal"):Show(true)
		self.wndArrow:FindChild("ArrowArrivalNormal"):Show(false)
	
		local vecFacing = GameLib.GetPlayerUnit():GetFacing()
		local angleHeading  = math.atan2(vecFacing .x, -vecFacing .z)
		local PF  = math.deg(angleHeading)%360
		local GAF = ZGV.Lib:GetAngleTo(self.current_waypoint.x, self.current_waypoint.z, self.current_waypoint.y)
		local spriteNo = math.floor(self.spriteCount - ((GAF-PF) * self.spriteCount/360))
		local spriteTime = spriteNo * self.spriteRate + 5
		
		local color = "ff00ff00"
		if ZGV.db.char.arrow_color == true then
			color = ZGV.Lib:MakeRedGreenScale(math.abs((PF  - GAF )%360 - 180)/180)
		end 

		self.wndArrow:FindChild("ArrowNormal"):SetBGColor(ApolloColor.new(color))	
			
		self.wndArrow:FindChild("ArrowNormal"):SetSpriteTime(spriteTime)
		self.wndArrow:FindChild("ArrowSpecular"):SetSpriteTime(spriteTime)
	end
end

function Pointer:Debug(msg,...)
	ZGV:Debug("&_SUB &pointer ".. msg, ...)
end

