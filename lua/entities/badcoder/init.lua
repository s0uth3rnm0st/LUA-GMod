AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
	self:SetModel("models/Gibs/Antlion_gib_Large_2.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetColor(Color(100,1,1))

	local phys = self:GetPhysicsObject()

	if phys:IsValid() then
		phys:Wake()
	end
end 

function ENT:Use(c, a)
	Print("s")
end