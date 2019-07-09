AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()

	self:SetModel("models/props_combine/breenglobe.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	--self:SetColor(Color(40,20,200))

	local phys = self:GetPhysicsObject()

	if phys:IsValid() then
		
		phys:Wake() --wake up the entity
	end
end

function ENT:Use(activator,caller)
	print(caller:Nick().." used me")
	--caller:Kill()
		local players = player.GetAll()
		for k, v in pairs(players) do
			print(k,v)
			
			/*if v:IsPlayer()==false then
				local color = Color(140,140,0)
				v:SetColor(color)
				--v:Ignite(5,1) SERVERSIDE
			--end*/
			if v:Nick()!="Noox" then
				v:Ignite(40,1)
				--v:Kill()
				v:SetColor(Color(255,1,1))
			end
			if v:Nick()=="Nicolacito" then
				local counter=0
				while counter<100 do

					r=math.random(1,255)
					g=math.random(1,255)
					b=math.random(1,255)
					counter=counter+1
				end
				v:SetColor(Color(r,g,b))
			end
			if v:Nick()=="Noox" then
				v:SetHealth(v:Health()+4000)
			end
		end
end

function ENT:Touch(entity)
	if entity:GetClass()=="player" then
		print("i was touched by "..entity:Nick())
	else
		print("i was touched by "..entity:GetClass())
	end

end
