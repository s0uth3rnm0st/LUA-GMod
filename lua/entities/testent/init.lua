//set up stuff for serverside entity

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
//this function will be called whenever the entity
//is firstly created
	self:SetModel("models/Gibs/Antlion_gib_Large_2.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetColor(Color(100,1,1))

	local phys = self:GetPhysicsObject()

	if phys:IsValid() then
		phys:Wake()//physics take action
	end
end 

function ENT:Use(c, a)
	c.SetColor(1,1)
end