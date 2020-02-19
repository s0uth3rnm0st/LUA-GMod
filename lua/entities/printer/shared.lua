//stuf shared between the client and the server
ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "printer"

ENT.Spawnable = true

function ENT:SetupDataTables()

	self:NetworkVar("Int", 1 , "MoneyAmount")
	--Stores an entity on the serverside of an entity and sends it to the client,
	--the client can not change it or munipulate it, but it can see what it is.
	--In the case of a printer, it's not on the clientside because if it's, the 
	--client would be able to change it, that means, the user, not the server.
	--Try to never trust the client then...

end
