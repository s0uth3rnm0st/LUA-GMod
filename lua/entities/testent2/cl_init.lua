include("shared.lua")

function ENT:Draw()
	self:DrawModel() --so the client can see the entity
	print(self:GetTestInt())
end