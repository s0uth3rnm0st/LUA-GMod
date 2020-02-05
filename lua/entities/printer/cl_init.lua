include("shared.lua")

surface.CreateFont( "MoneyFont", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 13,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
})

function ENT:Draw()

	self:DrawModel()

end

hook.Add("HUDPaint", "Draw money", function ()

	local eye = LocalPlayer():GetEyeTrace()

	if eye.Entity:GetClass() == "printer" then
		
		draw.SimpleText(eye.Entity:GetMoneyAmount(), "MoneyFont",ScrW()/2, ScrH()/2, Color(0,255,0) ,1,1)
		//GetMoneyAmount get the network var MoneyAmount in shared.lua

	end

end)