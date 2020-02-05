//set up stuff for serverside entity

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

local interval = 1

function ENT:Initialize()
//this function will be called whenever the entity
//is firstly created
	self:SetModel("models/props_c17/consolebox03a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	self:SetColor(Color(100,1,1))

	self.timer = CurTime()

	local phys = self:GetPhysicsObject()

	if phys:IsValid() then
		phys:Wake()//physics take action
	end
end 

function ENT:Think()
	
	if CurTime() > self.timer + interval then
		
		self.timer = CurTime()
		self:SetMoneyAmount(self:GetMoneyAmount() + 100)

	end

end