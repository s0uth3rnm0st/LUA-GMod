local frame=vgui.Create("DFrame")
frame:SetSize(300,300)
frame:SetVisible(true)
frame:Center()
frame:MakePopup()

local b=vgui.Create("DButton",frame)
b.DoClick=function()
	net.Start("nameMessage") --sending TO server
	net.WriteString("Hello world!")
	net.WriteInt(3424,16)
	net.SendToServer()

end

net.Receive("ClientMessage",function(len) --no ply param, the server send it, not the ply
	print("I got the message from the server")	
	
end)

--solved it: exit the console like he does in the
 