util.AddNetworkString("nameMessage")
util.AddNetworkString("ClientMessage")

net.Receive("nameMessage",function(len, ply)

	local s=net.ReadString()
	local int=net.ReadInt(16)

	print("I got the message "..s.." and "..int.." from "..ply:Nick())
	net.Start("ClientMessage") --sending FROM server
	net.Send(ply)
end)