mw_survival = {}
include("core/config/sh_config.lua")
AddCSLuaFile("core/config/sh_config.lua")
AddCSLuaFile("core/vgui/pickerPanel.lua")
AddCSLuaFile("core/libraries/cl_qql_funcs.lua")

util.AddNetworkString("mw_changeModel")


net.Receive("mw_changeModel", function()
    local player = net.ReadEntity()
    local newModel = net.ReadString()
    --if not mw_survival.playerModels[newModel] then MsgC(Color(0, 255, 0), "Player " .. player:Name() .. " (" .. player:SteamID64() .. ") " .. "sent invalid model " .. newModel) return end
    player:SetModel(newModel)
end)