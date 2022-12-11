require('window')
require('keybindings')
require('layouts')

hs.application.launchOrFocus("iTerm")

hs.alert.show("Configuration Reloaded!")
hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()
