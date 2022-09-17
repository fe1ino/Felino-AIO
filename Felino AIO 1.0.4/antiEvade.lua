return function()

	local evadeMenu

	for _, v in UI.rootMenus:pairs() do
	    if v and v.name and v.name == "evadeGeneralMenu" then
	        evadeMenu = v
	        break
	    end
	end

	local evadeIsEnabled = evadeMenu["generalSettingsMenu"]["isEnabled"]
	evadeIsEnabled.key = evadeToggleKey.key

-- Change Evade State
	local function evadeToggle()
		if evadeToggleKey.value then
			if evadeHoldKey.value then
				evadeIsEnabled.value = false 
			else
				evadeIsEnabled.value = true
			end
	end
	if not evadeToggleKey.value then
		evadeIsEnabled.value = false
	end
	end

	Callback.Bind(CallbackType.OnTick, evadeToggle)

-- Evade Status Drawing
	Callback.Bind(CallbackType.OnImguiDraw, function()
		if drawEvadeStatus.value == true then
			local fontSize = 16
			local text = evadeIsEnabled.value and "" or "Evade Disabled"
			local tX, tY = Renderer.CalcTextSize(text, fontSize)
			Renderer.DrawWorldText(text, Game.localPlayer.position, Math.Vector2((-7 - -tX/10), -tX/-100), fontSize)
		end
	end)

end