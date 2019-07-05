AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()

	self:SetModel("models/Gibs/HGIBS.mdl")
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
	caller:SetHealth(caller:Health()+1)
	if caller:Health()>400 then
		caller:Kill()
	end
end
