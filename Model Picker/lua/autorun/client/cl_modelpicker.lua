mw_survival = {}
include("core/vgui/pickerPanel.lua")
include("core/config/sh_config.lua")
include("core/libraries/cl_qql_funcs.lua")

for k, v in pairs(mw_survival.playerModels) do
    util.PrecacheModel(v)
end

concommand.Add("testModelPicker", function()
    local test = vgui.Create("mw_modelPicker")
    test:setModelList(mw_survival.playerModels)
    --PrintTable(test:getModelList())
end)