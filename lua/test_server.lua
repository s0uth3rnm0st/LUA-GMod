util.AddNetworkString("MessageName")
util.AddNetworkString("ClientMessage")

net.Receive("MessageName",function(len, ply)
	
	local s = net.ReadString()
	local ss = net.ReadString()
	local i = net.ReadInt(16)
	print("received from "..ply:Nick()
		.. " and the message is: "..s..", the" 
		.." second message is: "..ss
		.." and the int is: "..i)

	net.Start("ClientMessage")
	net.Send(ply)//now the server sends a message to
	//the player's client who sent the first message

end)