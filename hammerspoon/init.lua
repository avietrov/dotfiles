require('window')
require('keybindings')

hs.alert.show("Configuration Reloaded!")
hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()
