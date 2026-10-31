--##################
--## MY PROGRAMS ###
--##################

terminal = "kitty --start-as minimized"
fileManager = "nemo"
menu = "wofi --show"
browser = "firefox"

--################
--## AUTOSTART ###
--################

hl.on("hyprland.start", function () 
  hl.exec_cmd("waybar & hyprpaper")
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
  hl.exec_cmd("discord --start-minimized")
  hl.exec_cmd("steam -silent")
  --hl.exec_cmd("sleep 5 && steam steam://run/1454400")
end)
