local frame = vgui.Create("DFrame")
frame:SetSize(100,100)
frame:SetVisible(true)
frame:Center()
frame:MakePopup()

local b = vgui.Create("DButton",frame)
b.DoClick = function()
	net.Start("MessageName")//starts a message,
	//the string is the message name
		net.WriteString("asdasdasd")
		net.WriteString("qweqweqwe")
		net.WriteInt(2143,16)
	net.SendToServer()//sends it to the server
end

net.Receive("ClientMessage", function(len)//no ply, 'cause
	//the server is who sent the message, not a player

	print ("client received the message")

end)