-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = {}
-- Use config builder object if possible
if wezterm.config_builder then
	config = wezterm.config_builder()
end
-- local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- config.font = wezterm.font("JetBrains Mono")
config.font = wezterm.font_with_fallback({
	{ family = "FiraCode Nerd Font" },
	{ family = "JetBrainsMono Nerd Font" },
	{
		-- family = "MonaspiceNe Nerd Font",
		family = "Monaspace Neon",
		-- scale = 1.1,
		harfbuzz_features = { "calt", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "ss09", "liga" },
	},
	{
		family = "Iosevka Nerd Font Mono",
		scale = 1.05,
		-- harfbuzz_features = { "calt", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "ss09", "liga" },
	},
})

-- config.font_rules = {
-- 	{
-- 		italic = true,
-- 		font = wezterm.font_with_fallback({
-- 			{
-- 				family = "MonaspiceRn Nerd Font",
-- 				-- family = "Monaspace Radon",
-- 				-- scale = 1.1,
-- 				harfbuzz_features = { "calt", "ss01", "ss02", "liga" },
-- 			},
-- 		}),
-- 	},
-- }

-- config.harfbuzz_features = { "calt", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "ss09", "liga" }
config.font_size = 13

config.scrollback_lines = 10000
config.enable_scroll_bar = false

config.hide_mouse_cursor_when_typing = true

config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.tab_max_width = 100

config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.text_background_opacity = 1
config.window_background_opacity = 1

-- For example, changing the color scheme:
config.color_scheme = "Github Light (Gogh)"

-- and finally, return the configuration to wezterm
return config
