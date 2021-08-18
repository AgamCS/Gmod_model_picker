local mw_modelPicker = {}
local modelList = {}
local backgroundCLR = Color(0, 0, 0, 200)

local barGripClr = Color(155, 155, 155, 200)
local barButtonColor = Color(200, 200, 200, 200)

local closeButton = Color(255, 255, 255, 200)

function mw_modelPicker:Init()
    self:MakePopup()
    self:SetSize(ScrW(), ScrH())
    self:ShowCloseButton() 
end

function mw_modelPicker:setModelList(table)
    modelList = table
    self:makeModelScroll()
    self:makePlayerModel()
end

function mw_modelPicker:ShowCloseButton()
    self.closeButton = self:Add("DButton")
    self.closeButton:SetPos(self:GetWide() * 0.97, 0)
    self.closeButton:SetText("")
    self.closeButton.Paint = function()
        draw.Rect(0, 0, self.closeButton:GetWide(), self.closeButton:GetTall(), barButtonColor)
        draw.SimpleText("Back", "FontLol", self.closeButton:GetWide() * 0.5, self.closeButton:GetTall() * 0.5, color_black, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end

    self.closeButton.DoClick = function()
        self:Remove()
    end
end

function mw_modelPicker:getModelList()
    return modelList
end

function mw_modelPicker:makeModelScroll()
    local w, h = self:GetWide(), self:GetTall()
    self.modelScroll = self:Add("DScrollPanel")
    self.modelScroll:SetSize(w * 0.2, h)
    self.modelScroll:SetPos(0, 0)
    local sbar = self.modelScroll:GetVBar()
    function sbar:Paint(w, h)
        draw.RoundedBox(0, 0, 0, w, h, backgroundCLR)
    end

    function sbar.btnUp:Paint(w, h)
        draw.RoundedBox(0, 0, 0, w, h, barButtonColor)
    end
    
    function sbar.btnDown:Paint(w, h)
        draw.RoundedBox(0, 0, 0, w, h, barButtonColor)
    end

    function sbar.btnGrip:Paint(w, h)
        draw.RoundedBox(0, 0, 0, w, h, barGripClr)
    end
    

    for k, v in pairs(modelList) do
        local modelPanel = self.modelScroll:Add("DModelPanel")
        modelPanel:Dock(TOP)
        modelPanel:SetSize(self.modelScroll:GetWide() * 0.05, self.modelScroll:GetTall() * 0.3)
        modelPanel:SetModel(v)
        function modelPanel:LayoutEntity( Entity ) return end
        modelPanel.DoClick = function()
            local newModel = modelPanel:GetModel()
            mw_ModelPickerplayerModel:SetModel(newModel)
            net.Start("mw_changeModel")
                net.WriteEntity(LocalPlayer())
                net.WriteString(newModel)
            net.SendToServer()
        end
        local headpos = modelPanel.Entity:GetBonePosition(modelPanel.Entity:LookupBone("ValveBiped.Bip01_Head1"))
        modelPanel:SetLookAt(headpos)
        modelPanel:SetCamPos(headpos-Vector(-50, 0, 0))	-- Move cam in front of face
        modelPanel.Entity:SetEyeTarget(headpos-Vector(-15, 0, 0))
    end
end

function mw_modelPicker:makePlayerModel()
    local w, h = self:GetWide(), self:GetTall()
    mw_ModelPickerplayerModel = self:Add("DModelPanel")
    mw_ModelPickerplayerModel:SetSize(w * 0.6, h * 0.7)
    mw_ModelPickerplayerModel:SetPos(w * 0.3, 0)
    mw_ModelPickerplayerModel:SetModel(LocalPlayer():GetModel())
    function mw_ModelPickerplayerModel:LayoutEntity( Entity ) return end
    local headpos = mw_ModelPickerplayerModel.Entity:GetBonePosition(mw_ModelPickerplayerModel.Entity:LookupBone("ValveBiped.Bip01_Head1"))
    mw_ModelPickerplayerModel:SetLookAt(headpos)
    mw_ModelPickerplayerModel:SetCamPos(headpos-Vector(-125, 0, 0))	-- Move cam in front of face
    mw_ModelPickerplayerModel.Entity:SetEyeTarget(headpos-Vector(-15, 0, 0))
end

function mw_modelPicker:Paint(w, h)
    draw.Rect(0, 0, w, h, backgroundCLR)
end

vgui.Register("mw_modelPicker", mw_modelPicker, "DPanel")