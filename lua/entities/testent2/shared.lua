ENT.Type="anim"
ENT.Base="base_gmodentity"

ENT.PrintName="Test Entity 2"
ENT.Spawnable=true

function ENT:SetupDataTables()
	self:NetworkVar("Int",1,"TestInt")
end