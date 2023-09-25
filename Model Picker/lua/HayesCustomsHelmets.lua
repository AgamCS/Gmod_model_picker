-- ItemTweakerAPI makes a print statement for every item that is modified which noticeably increases load time (Some reports say up to 20 seconds longer load times)
-- So instead, we use our own solution that excludes the print statement
local function TweakItem(item, param, val)
    local itemClass = ScriptManager.instance:getItem(item)
    if itemClass then
        itemClass:DoParam(param .. " = " .. val)
    end
end

-- This mod was originally intended for only Brita's Items, but I decided to do Haye's Customs as well and I'm too lazy to change all the file names and such.
TweakItem("Base.Hat_GunRunnersHelmetNV", "BulletDefense", 70)
TweakItem("Base.Hat_GunRunnersHelmetNV", "ScratchDefense", 70)
TweakItem("Base.Hat_GunRunnersHelmetNV", "BiteDefense", 70)

TweakItem("Base.Hat_GunRunnersHelmet", "BulletDefense", 70)
TweakItem("Base.Hat_GunRunnersHelmet", "ScratchDefense", 70)
TweakItem("Base.Hat_GunRunnersHelmet", "BiteDefense", 70)

TweakItem("Base.Hat_TaskForceHelmet", "BulletDefense", 70)
TweakItem("Base.Hat_TaskForceHelmet", "ScratchDefense", 70)
TweakItem("Base.Hat_TaskForceHelmet", "BiteDefense", 70)