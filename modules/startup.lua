-- GLOBAL VARIABLES --
Terminal = "kitty"
Launcher = "rofi -show drun"
FileExplorer = "nautilus"

-- ENVIRONMENT VARIABLES --
	hl.env("HYPRCURSOR_SIZE", "24")
	hl.env("HYPRCURSOR_THEME", "moga")
	hl.env("XCURSOR_SIZE", "24")
	hl.env("TERMINAL", "kitty")
	hl.env("EDITOR", "nvim")


-- AUTOSTART --
hl.on("hyprland.start", function ()
	hl.exec_cmd("waybar & hyprpaper")
	hl.exec_cmd("hyprpm reload")
end)
