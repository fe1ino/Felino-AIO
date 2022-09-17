return function()

	Callback.Bind(CallbackType.OnTick, function()
		local Player = Game.localPlayer
		local playerLevel = Game.localPlayer:Level()
		if blueEnable.value == true and playerLevel > 8 and Game.localPlayer.canShop == true then
			if Player:GetItem(7) ~= 3363 then
				Player:BuyItem(3363)
			end
			if Player:GetItem(7) == 3363 and playerLevel > 8 then
				return CallbackResult.Dispose
			end
		end
	end)

end