-- ItemTweakerAPI makes a print statement for every item that is modified which noticeably increases load time (Some reports say up to 20 seconds longer load times)
-- So instead, we use our own solution that excludes the print statement
local function TweakHoleParam(item, val)
    local itemClass = ScriptManager.instance:getItem(item)
    if itemClass then
        itemClass:DoParam("CanHaveHoles = " .. val)
    end
end

-- Hats
TweakHoleParam("Base.Hat_Tactical_Boonie", "false")
TweakHoleParam("Base.Hat_Tactical_Boonie_Fold", "false")
TweakHoleParam("Base.Hat_Lisa_Cap", "false")
TweakHoleParam("Base.Hat_Tactical_Cap", "false")
TweakHoleParam("Base.Hat_Tactical_Cap_Back", "false")
TweakHoleParam("Base.Hat_Tactical_Cap_Camo", "false")
TweakHoleParam("Base.Hat_Tactical_Cap_Camo_Back", "false")
TweakHoleParam("Base.Hat_Patrol_Cap", "false")
TweakHoleParam("Base.Hat_Patrol_Cap_Back", "false")
TweakHoleParam("Base.Hat_Tactical_Beret", "false")
TweakHoleParam("Base.Officer_Hat", "false")
TweakHoleParam("Base.Police_Officer_Hat", "false")
TweakHoleParam("Base.Bear_Mask", "false")
TweakHoleParam("Base.Fire_Helmet", "false")
TweakHoleParam("Base.Military_Ghillie_Hat", "false")
TweakHoleParam("Base.Military_Ghillie_Hat_Mask", "false")
TweakHoleParam("Base.ELA_Cap", "false")
TweakHoleParam("Base.ELA_Cap_Back", "false")
TweakHoleParam("Base.Rose_Cap", "false")
TweakHoleParam("Base.Rose_Cap_Back", "false")
TweakHoleParam("Base.Round_Cap_Police", "false")
TweakHoleParam("Base.ELA_Cap_Back", "false")
TweakHoleParam("Base.Round_Cap_Police_Back", "false")
TweakHoleParam("Base.Sniper_Veil", "false")
TweakHoleParam("Base.Worn_Beanie", "false")
TweakHoleParam("Base.Worn_Beanie_Full", "false")
TweakHoleParam("Base.Round_Cap_Fisher", "false")
TweakHoleParam("Base.Round_Cap_Fisher_Back", "false")
TweakHoleParam("Base.Round_Cap_Casual", "false")
TweakHoleParam("Base.Round_Cap_Casual_Back", "false")

-- NVGS
TweakHoleParam("Base.Hat_Sam_NV", "false")
TweakHoleParam("Base.Hat_Sam_NV_OFF", "false")
TweakHoleParam("Base.Hat_PVS15_ON", "false")
TweakHoleParam("Base.Hat_PVS15_OFF", "false")
TweakHoleParam("Base.Hat_PVS15_Harness_ON", "false")
TweakHoleParam("Base.Hat_PVS15_Harness_OFF", "false")
TweakHoleParam("Base.Hat_NV18_ON", "false")
TweakHoleParam("Base.Hat_NV18_OFF", "false")
TweakHoleParam("Base.Hat_NV18_Harness_ON", "false")
TweakHoleParam("Base.Hat_NV18_Harness_OFF", "false")
TweakHoleParam("Base.NV_PVS5", "false")
TweakHoleParam("Base.NV_PVS5_OFF", "false")
TweakHoleParam("Base.NV_PNV_57", "false")
TweakHoleParam("Base.NV_PNV_57_OFF", "false")
TweakHoleParam("Base.NV_PVS7", "false")
TweakHoleParam("Base.NV_PVS7_OFF", "false")
TweakHoleParam("Base.NV_PVS21", "false")
TweakHoleParam("Base.NV_PVS21_OFF", "false")
TweakHoleParam("Base.NV_GPNVG_18", "false")
TweakHoleParam("Base.NV_GPNVG_18_OFF", "false")

