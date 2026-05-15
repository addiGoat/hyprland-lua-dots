function Cmd(command)
	local handle = io.popen(command)
	if not handle then return "" end
	local result = handle:read("*a")
	handle:close()
	return result
end

local monitors = Cmd("hyprctl monitors all")

local function has_monitor(name)
	return monitors:find(name:gsub("%-", "%%-")) ~= nil
end

IsDesktop = has_monitor("DP-1") and has_monitor("HDMI-A-1")
IsLaptop = has_monitor("eDP-1")

