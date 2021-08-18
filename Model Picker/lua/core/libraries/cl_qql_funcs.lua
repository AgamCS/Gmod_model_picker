
local blur = Material( "pp/blurscreen" )

function draw.OutlinedRectFill(x, y, width, height, outlineColor, outlineThickness, solidColor)
    surface.SetDrawColor(solidColor)
    surface.DrawRect(x, y, width, height)
    surface.SetDrawColor(outlineColor)
    surface.DrawOutlinedRect(x, y, width, height, outlineThickness)
end

function draw.OutlinedRect(x, y, width, height, outlineColor, outlineThickness)
    surface.SetDrawColor(outlineColor)
    surface.DrawOutlinedRect(x, y, width, height, outlineThickness)
end



function draw.text3D(text, font, x, y, color, text_align_x, text_align_y)
    draw.SimpleText(text, font, x, y, color, text_align_x, text_align_y)
end

function ace_Blur(panel, layers, density)
    local x, y = panel:LocalToScreen( 0, 0 )

    surface.SetDrawColor( 255, 255, 255, 255 )
    surface.SetMaterial( blur )

    for i = 1, 5 do
        blur:SetFloat( "$blur", ( i / 4 ) * 4 )
        blur:Recompute()

        render.UpdateScreenEffectTexture()
        surface.DrawTexturedRect( -x, -y, ScrW(), ScrH() )
    end
    

end

function draw.Rect(x, y, w, h, color)
    surface.SetDrawColor(color)
    surface.DrawRect(x, y, w, h)
end