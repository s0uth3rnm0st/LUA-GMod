AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()

	self:SetModel("models/props_junk/MetalBucket01a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetColor(Color(40,20,1))

	local phys = self:GetPhysicsObject()

	if phys:IsValid() then
		
		phys:Wake() --wake up the entity
	end

end

function ENT:Use(activator,caller)
	self:SetTestInt(self:GetTestInt() + 1)
end

