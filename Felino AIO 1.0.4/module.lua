menu = Environment.LoadModule("menu")

local twerkExploit = Environment.LoadModule("twerkExploit")
local cockHack = Environment.LoadModule("cockHack")
local autoLevel = Environment.LoadModule("autolevel")
local antiEvade = Environment.LoadModule("antiEvade")
local buyBlue = Environment.LoadModule("buyBlue")

local function init()
	menu = menu()
    cockHack()
    twerkExploit()
    autoLevel()
    antiEvade()
    buyBlue()
end

init()

Callback.Bind(CallbackType.OnUnload, function()
    Champions.Clean()
end)