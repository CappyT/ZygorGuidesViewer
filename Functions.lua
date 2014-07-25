local ZGV = ZygorGuidesViewer   if not ZGV then return end

-----------------------------------------
-- LOCAL REFERENCES
-----------------------------------------

local tinsert,tremove,sort,min,max,floor,type,pairs,ipairs = table.insert,table.remove,table.sort,math.min,math.max,math.floor,type,pairs,ipairs
--local create,resume,status,yield = coroutine.create,coroutine.resume,coroutine.status,coroutine.yield
local print = ZGV.print

-----------------------------------------
-- LOCAL VARIABLES
-----------------------------------------

local Utils = {}

-----------------------------------------
-- SAVED REFERENCES
-----------------------------------------

ZGV.Utils = Utils

-----------------------------------------
-- UTIL FUNCTIONS
-----------------------------------------

-- Usage:  local obj = CHAIN(wm:CreateControl(...)) :SetPoint(...) :SetDimensions(...) .__END
-- .__END returns the object
function Utils.ChainCall(obj)
	local T={}
	setmetatable(T,{__index = function(self,fun)
		if fun=="__END" then
			return obj
		end
		return function(self,...)
			assert(obj[fun],fun.." missing in object")
			obj[fun](obj,...)
			return self
		end
	end})
	return T
end

function Utils:GetFaction(unitTag)
	unitTag = unitTag or "player"

	assert(unitTag=="player","Can't check other units.")

	if unitTag=="player" and ZGV.FAKE_FACTION then return ZGV.FAKE_FACTION end

	local player = GameLib.GetPlayerUnit()  if not player then return end

	local faction = player:GetFaction()

	if faction == Unit.CodeEnumFaction.ExilesPlayer then  --API
		return "Exiles"
	elseif faction == Unit.CodeEnumFaction.DominionPlayer then  --API
		return "Dominion"
	else
		return "WTF"
	end
end

function Utils:IsFaction(fac)
	local faction = Utils:GetFaction()
	return (fac==faction)
	or (fac == "EXI" and faction == "Exiles")
	or (fac == "DOM" and faction == "Dominion")
end

local races={}  for k,v in pairs(GameLib.CodeEnumRace) do races[v]=k end
function Utils:GetPlayerRace()
	return races[GameLib.GetPlayerUnit():GetRaceId()]
end

local classes={}  for k,v in pairs(GameLib.CodeEnumClass) do classes[v]=k end
function Utils:GetPlayerClass()
	return classes[GameLib.GetPlayerUnit():GetClassId()]
end

local paths={
	[PlayerPathLib.PlayerPathType_Explorer]="Explorer",
	[PlayerPathLib.PlayerPathType_Scientist]="Scientist",
	[PlayerPathLib.PlayerPathType_Settler]="Settler",
	[PlayerPathLib.PlayerPathType_Soldier]="Soldier",
}
function Utils:GetPlayerPath()
	return paths[GameLib.GetPlayerUnit():GetPlayerPathType()]
end


function Utils:RaceClassMatch(fit)
	if type(fit)=="table" then
		for i,v in ipairs(fit) do if self:RaceClassMatch(v) then return true end end
		return false --otherwise
	end

	local race = Utils:GetPlayerRace():upper()
	local class = Utils:GetPlayerClass():upper()
	local faction = Utils:GetFaction("player"):upper()
	local path = Utils:GetPlayerPath():upper()
	fit=fit:upper()

	local neg=false
	if fit:sub(1,1)=="!" then
		neg=true
		fit=fit:sub(2)
	end
	local ret = (race==fit or class==fit or faction==fit or path==fit or race.." "..class==fit or race.." "..path==fit or race.." "..class.." "..path==fit)
	if neg then return not ret else return ret end
end

function ZGV:RaceClassMatchList(list)
	list=list..","
	local st,en=1
	for fit in list:gmatch("(.-),") do
		if self:RaceClassMatch(fit) then return true end
	end
end



function Utils.FormatLevel(l,...)
	if type(l) == "table" then l = ... end	-- dummy proof ZGV.Utils:FormatLevel(5)
	return tostring(l)		-- Nothing special atm
	--[[
	local int = floor(l)
	local frac = l-int
	frac = zo_round(frac*20)
	if frac>0 then
		return ("%d |cbbbbbb(+%d bars)|r"):format(int,frac)
	else
		return tostring(int)
	end
	--]]
end

function Utils.GetPlayerPreciseLevel()
	if ZGV.db.char.fakelevel and ZGV.db.char.fakelevel>0 then
		return ZGV.db.char.fakelevel
	else
		return GameLib.GetPlayerUnit():GetLevel()
		-- TODO return GetUnitLevel("player") + GetUnitXP("player")/max(GetUnitXPMax("player"),1)

	end
end

function Utils.GetPlayerName()
	local name = GetUnitName("player")

	return name
end

function Utils:IsPlayerInCombat()
	return ZGV.db.profile.fakecombat or IsUnitInCombat("player")
end

function Utils.ShowFloatingMessage(msg,event,font,sound,publicfloat,publictext)
	if ZGV.DEV or publicfloat then
		ZO_CenterScreenAnnounce_GetAnnounceObject():AddMessage(event or EVENT_OBJECTIVE_COMPLETED,font or CSA_EVENT_SMALL_TEXT,sound or SOUNDS.QUEST_OBJECTIVE_STARTED,"|cffaa00[|cf8fbffZ|cffaa00]|r "..msg)
	end
	if ZGV.DEV or publictext then	print(msg) end
end

function Utils.escape(s)
	return s:gsub("\'","\\\'"):gsub("\"","\\\""):gsub("%[","\\["):gsub("%]","\\]")
end
local esc=Utils.escape

local strrep=string.rep
function Utils.serialize(tab,indent)
	if type(tab)~="table" then return tab end
	local s = ""
	indent = indent or 0
	local keys={}
	for k,v in pairs(tab) do tinsert(keys,k) end
	table.sort(keys)
	s = s .. strrep("    ",indent) .. "{\n"
	for ki,key in ipairs(keys) do while 1 do
		local val = tab[key]
		s = s .. strrep("    ",indent+1)
		if tonumber(key) then
			s = s .. "[" .. key .. "]"
		else
			s = s .. "[\"" .. esc(key) .. "\"]"
		end
		s = s .. " = "
		if type(val)=="string" then s = s .. "\"" .. val .. "\""
		elseif type(val)=="number" then s = s .. val
		elseif type(val)=="function" then s = s .. "nil --function"
		elseif type(val)=="userdata" then s = s .. "nil --userdata"
		elseif type(val)=="nil" then s = s .. "nil"
		elseif type(val)=="table" then
			s = s .. "\n"
			s = s .. Utils.serialize(val,indent+1)
		end
		s = s .. "\n"
	break end end
	s = s .. strrep("    ",indent) .. "}\n"
	return s
end

-- Letters, numbers or spaces
function Utils.IsAlphanumeric(str)
	if not str then return end

	return not zo_strfind(str,"[^%w ]")
end

-----------------------------------------
-- OTHER FUNCTIONS
-----------------------------------------

-- Prototype inheritance for tables that will inherit all functions
function table.zginherits(self,tbl)
	self.__UNSTRICT_CLASS=1
	for f,fun in pairs(tbl) do
		if type(fun)=="function" -- Functions are the only thing we want to copy
		and f~="New" then					-- Don't copy :New because those are specific to the Frames and don't want to overwrite them
			if self[f] then self["saved"..f] = self[f] end	-- Don't strictly overwrite. Save it first incase it is still needed.
			self[f] = fun
		elseif f=="class" then
			self.class = self.class or fun				-- Don't overwrite class class of orginal obj
		end
	end
	self.__UNSTRICT_CLASS=nil
end

function table.zgclone(self)
	local t={}
	if type(self)=="table" then  for k,v in pairs(self) do t[k]=rawget(self,k) end  end
	return t
end

-- This gets at the actual metatable of userdata
function getusermetatable(tab)
	local meta = getmetatable(tab)

	local index = meta.__index

	return index
end

function class(obj)
	if type(obj)~="table" and type(obj)~="userdata" then return end
	return obj.class
end


function Utils.table_join (target,source)
	if type(source)~="table" then return end
	if type(target)~="table" then return end
	for k,v in pairs(source) do target[k]=v end
end

-- HAR HAR we can into hexaccurate colors năo
-- at least we're as precise as WoW lua allows us to
function HTMLColor(code)
	assert(code:match("#[0-9A-Fa-f]+$") and (#code==7 or #code==9),"Bogus code given: \""..code.."\")")
	local r,g,b,a=tonumber("0x"..code:sub(2,3))/0xff,
				  tonumber("0x"..code:sub(4,5))/0xff,
				  tonumber("0x"..code:sub(6,7))/0xff,
				  #code==9 and tonumber("0x"..code:sub(8,9))/0xff
	return r,g,b,a or 1
end




--------------------
Safe_G = {}  -- set of safe _G traversals

local safenext = function(table,index)
	local ok,k,v = pcall(next,table,index)
	if ok then
		return k,v
	else
		-- when pcall fails, it gives an error message. The failing index will be there!
		local newk = k:match(" function '(.-)'")
		if newk then
			return newk,"__PROT/PRIV__"
		else
			-- sad failure
		end
	end  -- k has the error message, important
end

Safe_G.pairs = function(table)  -- iterator
	return safenext,table,nil
end

-- NOTE: use zo_insecurePairs for a pairs implementation that SKIPS private/protected members.


Safe_G.prefixpairs = function(prefix)  -- iterator
	local safeglobalnext = function(tab,index)
		local val
		local safety=0
		repeat
			index,val = safenext(_G,index)
			if index and index:find("^"..prefix) then return index,val end
			safety=safety+1  if safety>20000 then return "ERR","ERR" end
		until not index
	end
	return safeglobalnext,_G,nil
end

Safe_G.getbyprefix = function(prefix,value,strip)  -- lookup func
	local ret
	for k,v in Safe_G.prefixpairs(prefix) do if v==value then ret=k break end end
	if strip then
		ret = ret:gsub(prefix,"")
		if ret:sub(1,1)=="_" then ret=ret:sub(2) end
	end
	return ret
end
----------------------


local HEADLEN=40
local TAILLEN=20
local LIMIT=HEADLEN+TAILLEN+12  -- making a buffer, so that texts cannot be (accidentally) excerpted twice.
function Utils.MakeExcerpt(text)
	if not text then return "" end
	if #text>LIMIT then
		--local sb,ss=string.byte,string.sub
		--local sum=0  for i=1,#text do sum=sum+sb(ss(text,i)) end  sum=sum%1000
		local n=HEADLEN/2
		local head = text:sub(1,HEADLEN)
		while head:sub(-1)~=" " and n>0 do head=head:sub(1,-2) n=n-1 end
		if #head==0 then head=text:sub(1,HEADLEN) end -- oh well

		local n=TAILLEN/2
		local tail = text:sub(-TAILLEN)
		while tail:sub(1,1)~=" " and n>0 do tail=tail:sub(2) n=n-1 end
		if #tail==0 then tail=text:sub(-TAILLEN) end -- oh well

		text=head.."___"..tail.."<"..#text..">"
	end
	return text
end
local MakeExcerpt=Utils.MakeExcerpt

-- /zgoo {ZGV.Utils.MatchExcerpt(shortem,lorem)}

function Utils.MatchExcerpt(exc,text)
	if exc==text then return true end
	if not exc or not text then return false end
	if exc:find("___") then -- this is an excerpt all right
		local txt,len = exc:match("^(.-)%s*<(%d+)>$")
		if txt then exc=txt end
		len=len and tonumber(len)

		-- First try parts.
		local safetext="%{%"..text.."%}%"
		local parts={zo_strsplit("___","%{%"..exc.."%}%")}
		for i,part in ipairs(parts) do
			if not zo_plainstrfind(safetext,part) then return false,safetext,part end
		end

		--local txt,len = short:match("(.*)%s+<(%d+)>$")
		if len and (len~=#text) then return false,len,#text end

		return true
	end
	return text==exc
end
local MatchExcerpt=Utils.MatchExcerpt

Utils.quest_cond_counts = "%s*:%s*%d%s*/%s*%d$"

-- TEST
--[[
lorem = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
shortem = MakeExcerpt(lorem)
assert (shortem=="Lorem ipsum dolor sit amet, consectetur ___ id est laborum.<446>",'Utils:MakeExcerpt cannot do lorem ipsum properly!')
assert (shortem==MakeExcerpt(shortem),'Utils:MatchExcerpt can\'t eat its own tail!')
assert(MatchExcerpt(shortem,lorem),'Utils:MatchExcerpt doesn\'t work on normal long texts')
assert(MatchExcerpt("Blah___bleh___bloh","Blah, this is bleh because bloh"),'Utils:MatchShortText fails to do 3 parts')
assert(not MatchExcerpt("Blah___bleh___bloh","bleh, this is bloh because Blah"),'Utils:MatchShortText is confused by order')
--assert(MatchExcerpt("Hello___<5>","zxcvb"),'Utils:MatchShortText can\'t work with length')
--assert(not MatchExcerpt("Hello___<6>","Hello"),'Utils:MatchShortText can\'t work with bad length')
--]]

function Utils.GetMyAddonInfo()
	local AM=GetAddOnManager()
	for i=1,AM:GetNumAddOns() do
		local dir,title,author,_1,_2,_3,_4 = AM:GetAddOnInfo(i)
		if dir==ZGV.DIR then return dir,title,_1,_2,_3,_4 end
	end
end


function Utils.IsPOIComplete(map,poi)
	if type(map)=="string" or (type(map)=="number" and map>1000) then
		poi = map%1000
		map = math.floor(map/1000)
	end
	if not map then map=GetCurrentMapZoneIndex() end
	if type(poi)=="string" then
		for i=1,GetNumPOIs(map) do
			local text,level,subtextinc,subtextcom = GetPOIInfo(map,i)
			if text==poi then poi=i break end
		end
	end
	if type(poi)=="number" then
		local x,y,typ,tex = GetPOIMapInfo(map,poi)
		return typ==MAP_PIN_TYPE_POI_COMPLETE
	end
end



function Utils.GetPOIForQuest(questid)
	if not ZGV._QuestPOIData then return "" end
	if questid<=999999 then questid=("%07d"):format(questid) end
	poi = ZGV._QuestPOIData:match("(%d+):[^\n]*"..questid)
	return poi
end



--[[
1. General							-- Always open, Don't hide
2. User Interface Shortcuts	-- Hide
3. Siege								-- Hide. Not sure what this is
4. Dialogs							-- Hide. Not sure what this is
5. Notifications				-- Hide. Not sure what this is
6. MouseUIMode
7. Conversation					-- Hide
8. Guild
9. RadialMenu						-- Don't hide
10. Death								-- Don't hide
11. Loot								-- Don't hide
12. GameMenu						-- Hide
13. Keybind Window
14. Addons
15. OptionsWindow

If 13/14/15 is open then
	12 is open

if 8 is open then
	2 is open




-- /zgoo GetAllActionLayerInfo()

function GetAllActionLayerInfo()
	local num = GetNumActionLayers()
	local table = {}
	for i=1,num do
		local layer = {}
		local name, numCata = GetActionLayerInfo(i)

		layer.name = name
		layer.active = IsActionLayerActiveByName(name)
		layer.cata = {}

		layer.tostring = function(self)
			return self.name..(self.active and " - ACTIVE" or "")
		end

		table[i] = layer

		-- Do same thing for each catagory
		for k=1, numCata do
			local cata = {}
			local cname, numAction = GetActionLayerCategoryInfo(i,k)

			cata.name = cname
			cata.actions = {}

			cata.tostring = function(self)
				return self.name
			end

			layer.cata[k] = cata

			--Same thing for each action? Woo copy paste.
			for j=1, numAction do
				local action = {}
				local aname, rebind, hidden = GetActionInfo(i,k,j)

				action.name = aname
				action.rebind = rebind
				action.hidden = hidden

				action.tostring = function(self)
					return self.name
				end

				cata.actions[j] = action

			end
		end
	end

	return table
end


--]]