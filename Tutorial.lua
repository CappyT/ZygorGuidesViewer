local ZGV = ZygorGuidesViewer   if not ZGV then return end

local Tutorial = {}
ZGV.Tutorial = Tutorial

ZGV.Tutorial.Text = {
	"Help comming soon."
}

function Tutorial:Initialize()
	if not self.wndTutorial then
		self.xmlDoc = XmlDoc.CreateFromFile("Tutorial.xml")
		self.wndTutorial = Apollo.LoadForm(self.xmlDoc, "ZGVHelpFrame", nil, self)
		if self.wndTutorial == nil then
			Apollo.AddAddonErrorText(self, "Could not load the config window for some reason.")
			return
		end
	else
		if self.wndTutorial:IsShown() then 
			self.wndTutorial:Show(false) 
		else 
			self.wndTutorial:Show(true) 
		end
	end
	self.currentStep = 1

	self:ShowStep()
end

function Tutorial:ShowStep()
	local targetWindow = self.wndTutorial:FindChild("ZGVHelpContainer"):FindChild("TextBox")
	targetWindow:SetText(ZGV.Tutorial.Text[self.currentStep])

	local nTextWidth, nTextHeight = targetWindow:SetHeightToContentHeight()
	local nLeft, nTop, nRight, nBottom = self.wndTutorial:GetAnchorOffsets()
	self.wndTutorial:SetAnchorOffsets(nLeft, nTop, nRight, nTop + nTextHeight + 70)
end

function Tutorial:NextStep()
	self:CycleStep(1)
end

function Tutorial:PrevStep()
	self:CycleStep(-1)
end


function Tutorial:CycleStep(delta)
	self.currentStep = self.currentStep + delta

	local count = #ZGV.Tutorial.Text
	
	if self.currentStep<1 then
		self.currentStep=count 
	end
	if self.currentStep>count then 
		self.currentStep=1
	end
	self:ShowStep()
end

function Tutorial:OnCancel()
	self.wndTutorial:Show(false)
	self.currentStep = 1
end

