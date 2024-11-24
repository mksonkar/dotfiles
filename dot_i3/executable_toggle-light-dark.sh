#!/bin/bash

# config file locations
wezterm_config_file="$HOME/.wezterm.lua"
alacritty_config_file="$HOME/.config/alacritty/alacritty.toml"
vimrc_file="$HOME/.vimrc"
i3_config_file="$HOME/.i3/config"
vscode_config_file="$HOME/.config/Code/User/settings.json"

# Define light and dark themes
# wezterm_light_theme="Everforest Light (Gogh)"
# wezterm_dark_theme="Everforest Dark (Gogh)"
# wezterm_dark_theme="GruvboxDark"
# wezterm_light_theme="GruvboxLight"
# wezterm_dark_theme="tokyonight_moon"
# wezterm_light_theme="tokyonight_day"
# wezterm_light_theme="Tokyo Night Day"
# wezterm_dark_theme="Tokyo Night Moon"
# wezterm_dark_theme="Catppuccin Mocha"
# wezterm_light_theme="Catppuccin Latte"
# wezterm_dark_theme="OneDark (base16)"
# wezterm_light_theme="One Light (base16)"
# wezterm_light_theme="Solarized Light (Gogh)"
# wezterm_dark_theme="Solarized Dark (Gogh)"
wezterm_light_theme="Github Light (Gogh)"
wezterm_dark_theme="Github Dark (Gogh)"

# wezterm
if grep -q "config.color_scheme = \"$wezterm_light_theme\"" $wezterm_config_file; then
  sed -ie "s/$wezterm_light_theme/$wezterm_dark_theme/" $wezterm_config_file
else
  sed -ie "s/$wezterm_dark_theme/$wezterm_light_theme/" $wezterm_config_file
fi

# tmux_config="$HOME/.config/tmux/tmux.conf"
# tmux_flavor_light="@catppuccin_flavor 'latte'"
# tmux_flavor_dark="@catppuccin_flavor 'macchiato'"
# # tmux
# if grep "$tmux_flavor_light" $tmux_config; then
#   sed -ie "s/set -g $tmux_flavor_light/set -g $tmux_flavor_dark/" $tmux_config
# else
#   sed -ie "s/set -g $tmux_flavor_dark/set -g $tmux_flavor_light/" $tmux_config
# fi

# vimrc_theme_light="set background=light"
# vimrc_theme_dark="set background=dark"

# i3
# i3_client_focused_light="client.focused          $fg4   $fg1   $bg    $green  $aqua"
# i3_client_focsued_in_light="client.focused_inactive $bg2   $bg3   $fg4   $bg2    $bg2"
# i3_client_unfocused_light="client.unfocused        $bg3   $bg3   $fg4   $bg2    $bg2"
#
# i3_client_focused_dark="client.focused          $fg4   $fg    $bg    $green  $aqua"
# i3_client_focsued_in_dark="client.focused_inactive $fg2   $fg2   $fg4   $fg1    $fg"
# i3_client_unfocused_dark="client.unfocused        $fg3   $fg2   $fg4   $fg1    $fg"

# kitty_bg_color="$(/usr/bin/kitten @ get-colors | grep "^background " | awk '{print $2}')"
# if [ "$kitty_bg_color" = "#282828" ]; then
#   /usr/bin/kitten themes --reload-in=all 'Gruvbox Light'
# else
#   /usr/bin/kitten themes --reload-in=all 'Gruvbox Dark'
# fi

# if grep '"workbench.colorTheme": "Gruvbox Material Dark"' $vscode_config_file; then
#   sed -i 's/"workbench.colorTheme": "Gruvbox Material Dark"/"workbench.colorTheme": "Gruvbox Material Light"/' $vscode_config_file
# else
#   sed -i 's/"workbench.colorTheme": "Gruvbox Material Light"/"workbench.colorTheme": "Gruvbox Material Dark"/' $vscode_config_file
# fi

# if grep "#light_mode=ON" $i3_config_file; then
#   sed -i "s/$i3_client_focused_light/$i3_client_focused_dark/" $i3_config_file
#   sed -i "s/$i3_client_focused_in_light/$i3_client_focused_in_dark/" $i3_config_file
#   sed -i "s/$i3_client_unfocused_light/$i3_client_unfocused_dark/" $i3_config_file
#   sed -i "s/#light_mode=ON/#light_mode=OFF/" $i3_config_file
# else
#   sed -i "s/$i3_client_focused_dark/$i3_client_focused_light/" $i3_config_file
#   sed -i "s/$i3_client_focused_in_dark/$i3_client_focused_in_light/" $i3_config_file
#   sed -i "s/$i3_client_unfocused_dark/$i3_client_unfocused_light/" $i3_config_file
#   sed -i "s/#light_mode=OFF/#light_mode=ON/" $i3_config_file
# fi

# alacritty_theme_light="gruvbox_light.toml"
# alacritty_theme_dark="gruvbox_dark.toml"

# if grep $alacritty_theme_light $alacritty_config_file; then
#   sed -i "s/$alacritty_theme_light/$alacritty_theme_dark/" $alacritty_config_file
# else
#   sed -i "s/$alacritty_theme_dark/$alacritty_theme_light/" $alacritty_config_file
# fi

# if grep -q "$vimrc_theme_light" $vimrc_file; then
#   sed -i "s/$vimrc_theme_light/$vimrc_theme_dark/" $vimrc_file
# else
#   sed -i "s/$vimrc_theme_dark/$vimrc_theme_light/" $vimrc_file
# fi
