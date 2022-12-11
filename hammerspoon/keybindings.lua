local keys = require('keys')

hs.hotkey.bind(keys.HYPER, "\\", function ()
  hs.application.launchOrFocus("iTerm")
end)
