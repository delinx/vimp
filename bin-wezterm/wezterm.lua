local wezterm = require 'wezterm'
local act = wezterm.action

--local fn = "Berkeley Mono"
local fn = "Berkeley Mono"
--local fn = "Fixedsys Excelsior"

return {
    --font = wezterm.font('Hack', { weight = 'Bold' }),
    --font = wezterm.font('Meslo LG S', { weight = 'Bold' }), -- LOVELY
    --font = wezterm.font('RobotoNerd'),
    --font = wezterm.font('Input', { weight = 'Bold' }),
    --font = wezterm.font('ExcelsiorRobotov1', { weight = 'Regular' }),
    --font = wezterm.font('ExcelsiorRobotov1', { weight = 'Regular' }),
    --font = wezterm.font('FixedsysModernV02', { weight = 'Regular' }),
    --font = wezterm.font(fn, { weight = 'Regular' }),
    --font = wezterm.font(fn, { weight = "Regular" }),
    font = wezterm.font(fn, { weight = "Regular" }),

    font_rules = {
        -- Define a rule that matches when italic text is shown
        {
            -- Match based on intensity: "Bold", "Normal" and "Half" are supported
            intensity = "Normal",
            font = wezterm.font(fn, { weight = "Regular" }),
        },
        {
            -- Match based on intensity: "Bold", "Normal" and "Half" are supported
            intensity = "Bold",
            font = wezterm.font(fn, { weight = "Bold" }),
        },
        {
            -- Match based on intensity: "Bold", "Normal" and "Half" are supported
            intensity = "Half",
            font = wezterm.font(fn, { weight = "Bold" }),
        },
    },

    --font = wezterm.font('Fixedsys Excelsior', { weight = 'Regular' }),
    --font = wezterm.font('Fixedsys Excelsior 3.01-L2 Mono', { weight = 'Regular' }),
    --font = wezterm.font('RobotoNerdTight', { weight = 'Bold' }),
    --freetype_load_target = "Light",
    --freetype_load_target = "Mono",
    --font_size = 15.6,
    font_size = 17,
    cell_width = 0.90,
    line_height = 1.0, -- 1.1
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
    adjust_window_size_when_changing_font_size = false,
    --window_background_opacity = 0.8,
    window_background_opacity = 0.95,
    use_fancy_tab_bar = false,

    inactive_pane_hsb = {
        saturation = 1.0,
        brightness = 1.0,
    },

    --freetype_load_flags = 'NO_HINTING',
    freetype_load_target = 'Normal',
    
    window_padding = {
      left = 0,
      right = 0,
      top = 0,
      bottom = 0,
    },

    colors = {
        background = 'black',

        ansi = { '#000000', '#f78166', '#689d6a', '#e3b341', '#6ca4f8', '#db61a2', '#2b7489', '#ebdbb2', },
        brights = { '#4d4d4d', '#f78166', '#8ec07c', '#e3b341', '#6ca4f8', '#db61a2', '#2b7489', '#fbf1c7', },
        cursor_bg = '#c9d1d9',
        cursor_border = '#c9d1d9',
        cursor_fg = '#101216',
        foreground = '#8b949e',
        selection_bg = '#3b5070',
        selection_fg = '#ffffff',

        compose_cursor = 'orange',
        copy_mode_active_highlight_bg = { Color = '#f899ff' },

        tab_bar = {
            background = '#090909',

            active_tab = {
                bg_color = '#2f2f2f',
                fg_color = '#c0c0ee',
                intensity = 'Bold',
                underline = 'None',
                italic = false,
                strikethrough = false,
            },

            inactive_tab = {
                bg_color = '#101010',
                fg_color = '#606060',
            },

            inactive_tab_hover = {
                bg_color = '#0f0f0f',
                fg_color = '#c0c0ee',
                italic = false,
                strikethrough = false,
            },

            new_tab = {
                bg_color = '#2f4f2f',
                fg_color = '#119911',
            },

            new_tab_hover = {
                bg_color = '#4f8f4f',
                fg_color = '#11ff11',
                italic = false,
                strikethrough = false,
            },
        },
    },


    -- key mess
    --

    keys = {
        {
            key = 'LeftArrow',
            mods = 'ALT',
            action = act.ActivatePaneDirection 'Left',
        },
        {
            key = 'RightArrow',
            mods = 'ALT',
            action = act.ActivatePaneDirection 'Right',
        },
        {
            key = 'UpArrow',
            mods = 'ALT',
            action = act.ActivatePaneDirection 'Up',
        },
        {
            key = 'DownArrow',
            mods = 'ALT',
            action = act.ActivatePaneDirection 'Down',
        },
        {
            key = 'h',
            mods = 'ALT',
            action = act.ActivatePaneDirection 'Left',
        },
        {
            key = 'l',
            mods = 'ALT',
            action = act.ActivatePaneDirection 'Right',
        },
        {
            key = 'k',
            mods = 'ALT',
            action = act.ActivatePaneDirection 'Up',
        },
        {
            key = 'j',
            mods = 'ALT',
            action = act.ActivatePaneDirection 'Down',
        },
        { key = 'n', mods = 'ALT',      action = act.ActivateTabRelative(-1) },
        { key = 'e', mods = 'ALT',      action = act.ActivateTabRelative(1) },
        { key = 'n', mods = 'CTRL|ALT', action = act.MoveTabRelative(-1) },
        { key = 'e', mods = 'CTRL|ALT', action = act.MoveTabRelative(1) },

        {
            key = 'w',
            mods = 'ALT',
            action = wezterm.action.CloseCurrentPane { confirm = true },
        },
        {
            key = 't',
            mods = 'ALT',
            action = act.SpawnTab 'CurrentPaneDomain',
        },
        {
            key = 'b',
            mods = 'ALT',
            action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
        },
        {
            key = 'v',
            mods = 'ALT',
            action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
        },
        {
            key = 'f',
            mods = 'ALT',
            action = wezterm.action.TogglePaneZoomState,
        },

    },

}
