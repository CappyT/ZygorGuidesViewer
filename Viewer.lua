local ZGV = ZygorGuidesViewer   if not ZGV then return end

local Viewer = {}
ZGV.Viewer = Viewer

local MAXLINES = 20



function Viewer:Initialize()
	self.GoalLines = {}
	for i=1,MAXLINES do
		table.insert(self.GoalLines,self:CreateRow())
	end 
	self.Frame:FindChild("StepBox"):ArrangeChildrenVert()
	self.ForceUpdateTimer = ApolloTimer.Create(0.1, true, "OnForceUpdate", self)
	self.ForceUpdateTimer:Stop()
	self.initialized = true
end

function Viewer:OnForceUpdate()
	self.ForceUpdateTimer:Stop()
	self:Update()
end	

function Viewer:ScheduleUpdate()
	self.ForceUpdateTimer:Start()
end

function Viewer:Update(full)
	if not self.initialized then return end
	self.Frame=ZGV.Frame --TODO make this proper...
	if not self.Frame or not self.Frame:IsShown() then return end
	local Fr = self.Frame
	local FC = function(name) return Fr:FindChild(name) end

	if ZGV.loading then
		--TODO FC("GuideTitleEdit"):SetText("Still loading?!?")
	else
		local curGuide = ZGV.CurrentGuide

		if curGuide and curGuide.steps and curGuide.fully_parsed then
			self.Frame:FindChild("GuideName"):SetText(curGuide.title_short)

			if ZGV.CurrentStepNum then
				FC("StepNumBox"):SetText(ZGV.CurrentStepNum)
				--TODO Fr.TitleBar.guideLabel:SetText(curGuide.title_short)
			end

			for stepnum = 1, (ZGV.sv.profile.numStepShow or 1) do while(1) do		-- TODO handle multiple steps Hiding/Showing and that jazz
				--local stepframe = Fr:GetStepUI(stepnum)	-- TODO maybe don't get/create it if we arn't going to display it?

				local isproperStepnum = true
				if isproperStepnum then	--if ((stepnum>=firststep and stepnum<=laststep) or frame.is_sticky) and stepnum<=#self.CurrentGuide.steps then
					local curStep = curGuide:GetCurStep()
					if not curStep then return false end

					--TODO checking stuff?

					local goalnum = 0	-- goalnum incremented manually so tip lines can be added
					-- Lets handle goals!
					for i,goal in ipairs(curStep.goals) do while(1) do
						goalnum = goalnum + 1
						--local goalframe = stepframe:GetGoalUI(goalnum)
						local goalframe = self.GoalLines[goalnum]   if not goalframe then break end
						local text = goal:GetText()
						local status = goal:GetStatus()
						if status == "hidden" then
							goalnum = goalnum - 1
							break
						end	-- Don't display a hidden goal.

						self:SetRowText(goalnum,text)
						goalframe:Show(true)
						goalframe:SetData({goal=goal,goalnum=goalnum,updated=true})
						--goalframe.dirty = true	-- Just set the text, So don't trigger a OnTextChanged until it is dirty again.


						-- Backdrops

						local StateTransparency = (ZGV.Pointer.wndArrow and ZGV.Pointer.current_waypoint and ZGV.Pointer.current_waypoint.goalnum==goal.num and ZGV.db.char.guide_highlight and "CC") or "88"

						if goal:IsCompletable() then
							local complete,possible = goal:IsComplete()
							if complete then
								self:SetRowBGColor(goalnum,StateTransparency .. "008800")
							elseif possible then
								self:SetRowBGColor(goalnum,StateTransparency .. "880000")
							else
								self:SetRowBGColor(goalnum,StateTransparency .. "aaaaaa")
							end
						else
							self:SetRowBGColor(goalnum,StateTransparency .. "222222")
						end

						
						-- ICONS
						
						if ZGV.db.char.goalicons or true then  -- TODO make optionable?
							self:SetRowIcon(goalnum,goal:GetIcon())
						end


						-- tip support
						if goal.tooltip then
							-- appended to the end of a goal. Get another goal line and put the tip on that line.
							local tiptext = goal:GetTipText()

							if goal.action~="tip" then
								goalnum=goalnum+1
							else
								-- WE ARE the tip? Just use the regular goalframe then.
							end

							self.GoalLines[goalnum]:Show(true)
							self:SetRowText(goalnum,tiptext,nil,"ffeedd00")
							self:SetRowBGColor(goalnum,"cc222222")
							self:SetRowIcon(goalnum,nil)

							-- Update the text for being a tip
							--tipframe.updated = true

							--TODO tipframe.label:SetFontSize(ZGV.sv.profile.fontsecsize)
						else
							--TODO goalframe.label:SetFontSize(ZGV.sv.profile.fontsize)
						end


						
					break end end

					-- Hide/Show goals properly.
					
					for goalnum=goalnum+1,#self.GoalLines do
						self.GoalLines[goalnum]:Show(false)
					end

					-- resize all to text height, rearrange
						-- auto heights, because Wildstar is braindead in that matter.
						local lasth
						for gi,goalframe in ipairs(self.GoalLines) do if goalframe:IsShown() then
							local nTextWidth, nTextHeight = goalframe:FindChild("GoalText"):SetHeightToContentHeight()
							nTextHeight = math.max(18,nTextHeight)
							local nLeft, nTop, nRight, nBottom = goalframe:GetAnchorOffsets()
							goalframe:SetAnchorOffsets(nLeft, nTop, nRight, nTop + nTextHeight)
							lasth = nTop + nTextHeight
							Fr:FindChild("StepBox"):ArrangeChildrenVert()
						end end

						if lasth then
							local nLeft, nTop, nRight, nBottom = Fr:GetAnchorOffsets()
							Fr:SetAnchorOffsets(nLeft, nTop, nRight, nTop+lasth+85)
						end
					--

				else
					-- Probably hide it or sumthin
					--stepframe:Hide()
				end

			break end end


		else
			-- No current guide.
			if #ZGV.registeredguides>0 then
				--TODO Fr.TitleBar.guideLabel:SetText(L["guide_notselected"])
			else
				--TODO Fr.TitleBar.guideLabel:SetText(L["guide_notloaded"])
			end

			for stepnum = 1, (ZGV.sv.profile.numStepShow or 1) do
				for goalnum=1,#self.GoalLines do
					self.GoalLines[goalnum]:Show(false)
				end
			end
		end
	end

	if full then self:UpdateProgressBar() end
end

function Viewer:UpdateProgressBar()
	if ZGV.CurrentGuide then 
		local currS, totalS = ZGV.CurrentGuide:GetProgress()
		self.Frame:FindChild("ZGVContainer"):FindChild("ProgressBar"):SetProgress(currS)
		self.Frame:FindChild("ZGVContainer"):FindChild("ProgressBar"):SetMax(totalS)
	end
end


function Viewer:CreateRow()
	local number = #self.GoalLines+1
	local targetWindow = self.Frame:FindChild("StepBox")
	local guideRow = Apollo.LoadForm(ZGV.xmlDoc , "GuideStepGoal", targetWindow , self)
	guideRow:SetName("Line"..number)
	--guideRow:SetBGColor(ApolloColor.new("00000000"))
	guideRow:FindChild("GoalText"):SetText("<P>bla <T TextColor=\"ff336699\">bla</T> bla </P>")
	return guideRow
end

function Viewer:SetRow(n,text,bgcolor,textcolor)
	if n>MAXLINES then return end
	self:SetRowText(n,text)

	bgcolor = bgcolor or "00000000"
	self:SetRowBGColor(n,ApolloColor.new(bgcolor))

	textcolor = textcolor or "white"
	self:SetRowTextColor(n,ApolloColor.new(textcolor))
end

function Viewer:SetRowBGColor(n,color)
	if n>MAXLINES then return end
	self.GoalLines[n]:SetBGColor(ApolloColor.new(color))
end

function Viewer:SetRowText(n,text)
	if n>MAXLINES then return end
	local TextField = self.GoalLines[n]:FindChild("GoalText")
	if not TextField then return end
	TextField:SetText("<P Font = 'DefaultButton'>"..text.."</P>")
end

function Viewer:SetRowIcon(n,icon)
	if n>MAXLINES then return end
	local GoalIcon = self.GoalLines[n]:FindChild("GoalIcon")
	if not icon then 
		GoalIcon:SetSprite("")
	else 
		GoalIcon:SetSprite(icon)	
	end
end


function Viewer:SetRowTextColor(n,color)
	if n>MAXLINES then return end
	local TextField = self.GoalLines[n]:FindChild("GoalText")
	TextField:SetTextColor(ApolloColor.new(color))
end

function Viewer:GuideGoalClicked( wndHandler, wndControl, eMouseButton, nLastRelativeMouseX, nLastRelativeMouseY, bDoubleClick, bStopPropagation )
	local goal = wndHandler:GetData().goal
	
	if goal.x then
		if ZGV.Pointer.waypoints then 
			for wi,way in ipairs(ZGV.Pointer.waypoints) do
				if way.goalnum==goal.num then
					ZGV.Pointer:ShowArrow(way)
					self:ScheduleUpdate()
					break
				end
			end
		end
	elseif ZGV.GOALTYPES[goal.action].click then
		ZGV.GOALTYPES[goal.action].click(goal)
	end
end

