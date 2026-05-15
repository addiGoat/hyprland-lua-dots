-- GLOBAL VARIABLES --
Terminal = "kitty"
Launcher = "rofi -show drun"
FileExplorer = "nautilus"


-- AUTOSTART --
hl.on("hyprland.start", function ()
	hl.exec_cmd("waybar & hyprpaper")
	hl.exec_cmd("hyprpm reload")
end)
