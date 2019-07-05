print("hello world!!") --gmod doesn't need io.read
print("lua_openscript ---> server (blue)")
print("lua_openscript_cl ---> client (yellow)")
print("")
print("")
print("")
print("", "ESTA ES LA PIJA QUE SE COME NIKI!!!!!")

local ply = LocalPlayer()

local isPlayerAlive = ply:Alive()
print("The player is alive:",isPlayerAlive)

local kills = ply:Frags()
print("Kills:",kills)

local deaths = ply:Deaths()
print("Deaths:",deaths)


local entities = ents.GetAll()


for k, v in pairs(entities) do
	--print(k,v)
	
	if v:IsPlayer()==false then
		local color = Color(140,140,0)
		v:SetColor(color)
		--v:Ignite(5,1) SERVERSIDE
	end
end


local test=function()
	print("hello000")
end
test()





