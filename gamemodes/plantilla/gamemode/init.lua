AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function GM:PlayerConnect(name, ip)
//Overrides the function (player spawning).
//We shouldn't override, except in gamemodes

	print ("Player "..name..", ip: "..ip.." has connected.")

end

function GM:PlayerInitialSpawn(ply)
//Overrides the function (player spawning).
//We shouldn't override, except in gamemodes

	print ("Player "..ply:Nick().." has spawned.")

end