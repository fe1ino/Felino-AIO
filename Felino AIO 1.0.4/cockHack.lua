return function()

-- Cock Hack Drawing
	Callback.Bind(CallbackType.OnImguiDraw, function()
		if cockEnable.value == true then
			local fontSize = 16
			local text = "Cock Hack Enabled"
			local tX, tY = Renderer.CalcTextSize(text, fontSize)
			Renderer.DrawWorldText(text, Game.localPlayer.position, Math.Vector2((-7 - -tX/10-55), -tX+75), fontSize)
		end
	end)

end