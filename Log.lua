local ZGV = ZygorGuidesViewer   if not ZGV then return end

local tinsert,tremove,sort,min,max,floor,type,pairs,ipairs = table.insert,table.remove,table.sort,math.min,math.max,math.floor,type,pairs,ipairs
local print = ZGV.print

local Log = {}
ZGV.Log = Log

Log.entries = {}
Log.size = 1000
Log.loud = false

function Log:SetSize(size)
	self.size = size
	self:Trim()
end

function Log:Trim()
	local len = #self.entries
	if len>self.size then
		for i=1,len-self.size,1 do
			tremove(self.entries,1)
		end
	end
end

function Log:Add(text,...)
	local message = text:format(...)

	local localTime = GameLib.GetLocalTime()

	local datestamp = localTime.strFormattedTime.." ("..GameLib.GetGameTime()..") "

	tinsert(self.entries, datestamp .. "> "..message )
	if #self.entries>self.size then
		tremove(self.entries,1)
	end
	if self.loud then
		Print("|c8888ff".. datestamp ..">|r |cccccff"..message .."|r")
	end
end

function Log:Print(n)
	local len = #self.entries
	if not n or n>len then n=len end
	for i=len-n+1,len,1 do
		Print(self.entries[i])
	end
end

function Log:Dump(n)
	local s = ""
	local len = #self.entries
	if not n or n>len then n=len end
	for i=len-n+1,len,1 do
		s = s .. self.entries[i] .. "\n"
	end
	return s
end