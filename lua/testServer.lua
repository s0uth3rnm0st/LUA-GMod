print("hello world!!") --gmod doesn't need io.read
print("lua_openscript ---> server (blue)")
print("lua_openscript_cl ---> client (yellow)")
print("")
print("")
print("")
print("", "ESTA ES LA PIJA QUE SE COME NIKI!!!!!")



local entities = ents.GetAll()


for k, v in pairs(entities) do
	--print(k,v)
	
	if v:IsPlayer()==false then
		local color = Color(140,140,0)
		v:SetColor(color)
		v:Ignite(5,1) --SERVERSIDE
	end
end


local test=function()
	print("hello000")
end
test()



function testing2(ply,text,team)
	if text=="matame" then
		ply:Kill() --SERVERSIDE
		print("jajajaj putoo")		
	end
end
hook.Add("PlayerSay","Death",testing2)

function testing3(ply, ent)
	ent:SetColor(Color(0,255,0))
end
hook.Add("PhysgunPickup","Physgun",testing3)

function testing3(ply,button)
	if button==12 then --pres B to die
		ply:Kill() --SERVERSIDE
		print("jajajaj putoo")		
	end
end
hook.Add("PlayerButtonDown","Death_button",testing3)



