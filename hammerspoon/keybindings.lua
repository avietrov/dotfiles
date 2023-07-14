local keys = require('keys')

local function appShortcut(key, appName)
  hs.hotkey.bind(keys.HYPER, key, function ()
    hs.application.launchOrFocus(appName)
  end)
end

appShortcut("t", "iTerm")
appShortcut("f", "ForkLift")
appShortcut("n", "Craft")
appShortcut("m", "Maps")
appShortcut("c", "Fleet")

