require('window')
require('keybindings')
require('layouts')

hs.alert.show("Configuration Reloaded!")
hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()
