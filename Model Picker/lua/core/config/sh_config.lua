mw_survival.playerModels = {
    "models/player/gasmask.mdl",
    "models/player/urban.mdl",
    "models/player/swat.mdl",
    "models/player/riot.mdl",
    "models/player/phoenix.mdl",
}

if CLIENT then

    local function CreateFont()
        surface.CreateFont( "FontLol", {
            font = "Arial", 
            extended = false,
            size = ScreenScale(5),
        })
    end
    CreateFont()


end