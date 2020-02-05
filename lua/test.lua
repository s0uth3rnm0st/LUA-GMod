local players = player.GetAll()
local entities = ents.GetAll()

local function kill(ply,text,team)
	for k, v in pairs(players)do
		if text == "!kill " .. v:Name()then
			v:Kill()
		end
	end
end

local function drop(ply,text,team)
	if text == "!drop" then
		ply:DropWeapon(ply:GetActiveWeapon())
	end

	if text == "!dropAll" then
		for k, v in pairs(ply:GetWeapons()) do
			ply:DropWeapon(v)
		end
	end

	if text == "!dropEx" then
		ply:DropNamedWeapon("weapon_smg1")
		ply:DropNamedWeapon("gmod_camera")
		ply:DropNamedWeapon("weapon_shotgun")
		ply:DropNamedWeapon("weapon_crowbar")
		ply:DropNamedWeapon("weapon_357")
		ply:DropNamedWeapon("weapon_ar2")
		ply:DropNamedWeapon("weapon_pistol")
		ply:DropNamedWeapon("weapon_physcannon")
		ply:DropNamedWeapon("weapon_frag")
		ply:DropNamedWeapon("weapon_rpg")
		ply:DropNamedWeapon("weapon_crossbow")
	end

	//SWITCH!!!
end

/*local function colours()
	local r = math.random(1,255)
	local g = math.random(1,255)
	local b = math.random(1,255)

	for k, v in pairs (entities) do
		if v:IsPlayer() then
			v:SetColor(Color(r,g,b))
		end
	end
end*/

hook.Add("PlayerSay", "kill", kill)

hook.Add("PlayerSay", "drop", drop)

//hook.Add("Think","colours",colours)

