surface.CreateFont( "Font", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 30,
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
} )

surface.CreateFont( "FontDead", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 50,
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
	outline = true,
} )

/*hook.Add("HUDPaint","drawMyHud", function()
	local counter=0
	while counter<100 do

		r=math.random(1,255)
		g=math.random(1,255)
		b=math.random(1,255)
		counter=counter+1
	end
	draw.RoundedBox(20,150,90,1000,100,Color(1,1,1,190))
	draw.SimpleText("La MOGOLICA de", "Font",160 ,100 ,Color( 255, 255, 255,200), 0, 0)
	nombre=draw.SimpleText("valen", "Font",453 ,100 ,Color( r, g, b), 0, 0)
	draw.SimpleText("se fue a ranchar aparte con la gilada...", "Font",545 ,100 ,Color( 255, 255, 255,200), 0, 0)
end)*/



hook.Add("HUDPaint","Health",function ()
local health=LocalPlayer():Health()

if health>0 then
	local ply = LocalPlayer()
	draw.RoundedBox(10,ScrW()-1083 ,ScrH()-54,406,36,Color(1,1,1,210))
	draw.RoundedBox(10,ScrW()-1080 ,ScrH()-51,health*4,30,Color(255,1,1,130))
	draw.SimpleText(health.."%", "Font",ScrW()-1080 ,ScrH()-51,Color( 255, 255, 255), 0, 0)
	local kills = ply:Frags()
	draw.SimpleText("K:"..kills, "Font",ScrW()-1080 ,ScrH()-81,Color( 255, 255, 255), 0, 0)
	local deaths = ply:Deaths()
	draw.SimpleText("D:"..deaths, "Font",ScrW()-1010 ,ScrH()-81,Color( 255, 255, 255), 0, 0)
	if health<25 then
		draw.SimpleText("Hasta las manos!!", "Font",ScrW()-1020 ,750,Color( 255, 255, 255), 0, 0)
	end
else
	local counter=0
	while counter<100 do

		r=math.random(1,255)
		g=math.random(1,255)
		b=math.random(1,255)
		counter=counter+1
	end
	draw.SimpleText("Te moriste, pichi...", "FontDead",50 ,50 ,Color( r, g, b), 0, 0)
end
end)




function buttonPressed()
print("weapons")
end

local frame = vgui.Create("DFrame")
frame:SetSize(500,500)
--frame:SetPos(300,300)
frame:Center()
frame:SetVisible(true)
frame:MakePopup()
frame:SetTitle("Shop")
frame:SetDraggable(false)
frame.Paint = function( s, w, h ) 
draw.RoundedBox( 5, 0, 0, w, h, Color( 20, 20, 20, 200 ) ) 
end

local button=vgui.Create("DButton",frame)
button:SetSize(80,100)
button:SetPos(20,30)
button:SetText("Weapons")
button.DoClick=buttonPressed

