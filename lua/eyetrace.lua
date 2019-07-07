hook.Add("Think","TestHook",function()

	local eyeTrace=LocalPlayer():GetEyeTrace()
	chat.AddText(eyeTrace.Entity)
	/*if eyeTrace.Entity == "worldspawn" then
		chat.AddText("You are staring at tha world")
	end*/

end)