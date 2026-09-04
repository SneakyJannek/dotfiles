--##################
--## MY PROGRAMS ###
--##################

local terminal = "kitty"
local fileManager = "nemo"
local menu = "wofi --show"
local browser = "vivaldi"

--################
--## AUTOSTART ###
--################

hl.on("hyprland.start", function () 
  hl.exec_cmd("waybar & hyprpaper")
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
  hl.exec_cmd("steam -silent")
  hl.exec_cmd("discord --start-minimized")
end)
