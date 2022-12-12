local keys = require('keys')

local homeScreen = "DELL U2415"
local laptopScreen = "Built-in Retina Display"

hs.hotkey.bind(keys.HYPER, "1", function ()
  local layout = {
    {"Safari", nil, homeScreen, hs.layout.maximised, nil, nil},
    {"iTerm2", nil, homeScreen, hs.layout.maximised, nil, nil},
    {"Telegram", nil, laptopScreen, hs.layout.maximised, nil, nil},
    {"Spotify", nil, laptopScreen, hs.layout.maximised, nil, nil},
    {"Things", nil, laptopScreen, hs.layout.maximised, nil, nil}
  }
  hs.layout.apply(layout)
end)



hs.hotkey.bind(keys.HYPER, "2", function ()
  local layout = {
    {"Firefox",  nil, homeScreen, hs.layout.maximised, nil, nil},
    {"iTerm2", nil, homeScreen, hs.layout.maximised, nil, nil},
    {"Slack", nil, laptopScreen, hs.layout.maximised, nil, nil},
    {"Spotify", nil, laptopScreen, hs.layout.maximised, nil, nil},
    {"Things", nil, laptopScreen, hs.layout.maximised, nil, nil}
  }
  hs.layout.apply(layout)
end)
