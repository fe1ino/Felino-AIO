return function()

	local charName = Game.localPlayer.charName
	local displayName = Game.localPlayer.displayName

	menu = UI.Menu.CreateMenu(("felino"),("Felino AIO"),2)

-- Secret Settings
	generalMenu = menu:AddMenu(("generalMenu"),("Secret Settings"))
	myBalls = generalMenu:AddCheckBox(("myBalls"),("MyBalls Bypass"))
	
	cockEnable = generalMenu:AddCheckBox(("cockEnable"),("Enable Cock Hack"))
	cockEnable:AddTooltip(("Does exactly what you think it does"))

	annieEnable = generalMenu:AddCheckBox(("annieEnable"),("Cafe-Cuties Annie Exploit"))
	annieEnable:AddTooltip(("Use with caution, very powerful exploit"))

	blueEnable = generalMenu:AddCheckBox(("blueEnable"),("Swap Blue Trinket"))
	blueEnable:AddTooltip(("Automatically swap to blue trinket at level 9"))

-- Evade Menu
	evadeHoldMenu = menu:AddMenu(("evadeHoldMenu"),("Anti-Evade"))
	evadeHoldKey = evadeHoldMenu:AddKeyBind(("evadeHoldKey"),("Block Evade Hold"),1,false,false)
	evadeToggleKey = evadeHoldMenu:AddKeyBind(("evadeToggleKey"),("Evade Toggle"),4,true,true)
	drawEvadeStatus = evadeHoldMenu:AddCheckBox(("drawEvadeStatus"),("Draw Status"),true)
	
-- Twerk Exploit
	twerk = menu:AddMenu(("twerk"),("Twerk Exploit"))
	twerkKey = twerk:AddKeyBind(("twerkKey"),("Twerk Key"),0x7,false,false)
	twerkSelect = twerk:AddSlider(("twerkSelect"),("Select Twerk Style"),3,0,4,1)
	
-- Auto Leveler
	autoLevel = menu:AddMenu(("autoLevel"..charName),("Auto Leveler"))
	levelEnable = autoLevel:AddCheckBox(("levelEnable"..charName),("AutoLeveler Enabled"),false)
	levelOrder = autoLevel:AddList(("levelOrder"..charName),("Auto Level Order"),
		{
			(("Q>W>E")),(("Q>E>W")),(("W>Q>E")),(("W>E>Q")),(("E>Q>W")),(("E>W>Q"))
		},0)
	levelOrderLimit = autoLevel:AddSlider(("levelOrderLimit"..charName),("Level Start"),3,1,17,1)

	newLine = menu:AddInfo(("newLine"),(""))
	fVersion = menu:AddInfo(("fVersion"),("                               Version 1.0.4"))

return menu

end