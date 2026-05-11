
--===============================--    
--  f  e  v  e  r            v1  -- 
--                   m  e  l  t  --    by fever dream kid
--===============================--

------------------
---- MONITORS ----
------------------
    -- Acer --
hl.monitor({
    output   = "DP-1"        ,
    mode     = "1920x1080@60",
    position = "-1920x200"   ,
    scale    = "1"           ,
})

    -- Samsung --
hl.monitor({
    output   = "DP-3"         ,
    mode     = "1920x1080@144",
    position = "0x0"          ,
    scale    = "1"            ,
})

    -- Huion --
hl.monitor({
    output   = "HDMI-A-1"    ,
    mode     = "1920x1080@60",
    position = "0x1080"      ,
    scale    = "1"           ,
})
--NOTE : CONFIGURE MOUSE MOVES ON DPMS

---------------------
---- MY PROGRAMS ----
---------------------
local terminal    = "kitty"
local fileManager = "nautilus"
local menu        = "hyprlauncher"


-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function () 
hl.exec_cmd("waybar")
hl.exec_cmd("hyprpaper")
hl.exec_cmd("solaar - w hide")
hl.exec_cmd("otd-daemon")
hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
hl.exec_cmd("[workspace 1 silent] firefox")
hl.exec_cmd("[workspace 3 silent] vesktop")
hl.exec_cmd("[workspace 3 silent] Spotify")
end)


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
hl.env("HYPRCURSOR_THEME", "rose-pine-hyprcursor")
hl.env("XCURSOR_THEME", "rose-pine-hyprcursor")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")


-----------------------
----- PERMISSIONS -----
-----------------------
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/


-----------------------
---- LOOK AND FEEL ----
-----------------------
hl.config({
    general = {
        gaps_in     = 5 ,
        gaps_out    = 20,
        border_size = 4 ,

        col = {
            active_border   = { colors = {"rgba(210,198,184,1)", angle = 0 },
            inactive_border = "rgba(126,100,77,1)", angle = 45 }            ,
        },

        resize_on_border = true     ,
        allow_tearing    = false    ,
        layout           = "dwindle",
    },

    decoration = {
        rounding         = 10 ,
        rounding_power   = 2  ,
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true                 ,
            range        = 30                   ,
            render_power = 3                    ,
            color        = "rgba(70, 83, 73, 1)",
        },

        blur = {
            enabled   = true,
            size      = 3   ,
            passes    = 3   ,
            vibrancy  = 0.7 ,
        },
    },

    animations = {
        enabled = true,
    },
})

hl.curve("easeOutQuint"  , { type = "bezier", points = { {0.23, 1}   , {0.32, 1}} })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}} })
hl.curve("linear"        , { type = "bezier", points = { {0, 0}      , {1, 1   }} })
hl.curve("almostLinear"  , { type = "bezier", points = { {0.5, 0.5}  , {0.75, 1}} })
hl.curve("quick"         , { type = "bezier", points = { {0.15, 0}   , {0.1, 1 }} })

-- Default springs
hl.curve("easy",{ type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })
hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 4.1,  spring = "easy",         style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })

hl.config({
    dwindle = {
        --pseudotile     = true,
        preserve_split = true,
    },
})

hl.config({
    master = {
        new_status = "master",
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

----------------
----  MISC  ----
----------------
hl.config({
    misc = {
        force_default_wallpaper  = -1   ,    
        disable_hyprland_logo    = false,
        --mouse_moves_enables_dpms = true ,
    },
})


---------------
---- INPUT ----
---------------
hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = ""  ,
        kb_model   = ""  ,
        kb_options = ""  ,
        kb_rules   = ""  ,
        follow_mouse = 1 ,
        sensitivity = 0  ,

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers   = 3           ,
    direction = "horizontal",
    action    = "workspace" ,
})

hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5           ,
})


---------------------
---- KEYBINDINGS ----
---------------------
local mainMod = "SUPER"

local closeWindowBind = hl.bind(mainMod .. " + A", hl.dsp.window.close())
hl.bind("SUPER + Q", hl.dsp.       exec_cmd(terminal))
hl.bind("SUPER + M", hl.dsp.       exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind("SUPER + E", hl.dsp.       exec_cmd(fileManager))
hl.bind("SUPER + V", hl.dsp.window.float   ({action = "toggle"}))
hl.bind("SUPER + R", hl.dsp.       exec_cmd(menu))
hl.bind("SUPER + P", hl.dsp.window.pseudo  ())
hl.bind("SUPER + J", hl.dsp.       layout  ("togglesplit"))

-- Move focus with mainMod + arrow keys
hl.bind("SUPER + left" , hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right"}))
hl.bind("SUPER + up"   , hl.dsp.focus({ direction = "up"   }))
hl.bind("SUPER + down" , hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind("SUPER + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + S", hl.dsp.window.   move          ({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up"  , hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag()  , { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

--Custom Keybinds
hl.bind("SUPER + F"        , hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER + SPACE"    , hl.dsp.exec_cmd("rofi -show run"))
hl.bind("SUPER + W"        , hl.dsp.window.fullscreen(fullscreen, toggle))
hl.bind("SUPER + SHIFT + D", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))
hl.bind("SUPER + SHIFT + UP"   , hl.dsp.window.move({direction = "up"}))
hl.bind("SUPER + SHIFT + DOWN" , hl.dsp.window.move({direction = "down"}))
hl.bind("SUPER + SHIFT + LEFT" , hl.dsp.window.move({direction = "left"}))
hl.bind("SUPER + SHIFT + RIGHT", hl.dsp.window.move({direction = "right"}))
hl.bind("SUPER + O", hl.dsp.exec_cmd("hyprctl dispatch dpms off"))
hl.bind("SUPER + I", hl.dsp.exec_cmd("bluetoothctl connect 00:A4:1C:05:5D:76")) --connect WHC720N
hl.bind("SUPER + U", hl.dsp.exec_cmd("syspower -m 1"))


--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name  = "move-hyprland-run"       ,
    match = { class = "hyprland-run" },
    move  = "20 monitor_h-120"        ,
    float = true                      ,
})

hl.window_rule ({
    name    =       "spotifyRule"  ,
    match   = { class = "Spotify" },
    opacity =               "0.8"  ,
})

hl.window_rule ({
    name    = "vesktopRule"        ,
    match   = { class = "vesktop" },
    opacity = "0.9"                ,
})

hl.window_rule ({
    name    = "nemoRule"        ,
    match   = { class = "nemo" },
    opacity = "0.9"             ,
})

hl.window_rule ({
    name    = "nautilusRule"                  ,
    match   = { class = "org.gnome.Nautilus" },
    opacity = "0.9"                           ,
})

hl.window_rule ({
    name    = "vscodeRule"          ,
    match   = { class = "code-oss" },
    opacity = "0.9"                 ,
})

hl.window_rule ({
    name    = "steamRule"          ,
    match   = { class = "steam" }  ,
    opacity = "0.9"                ,
})

hl.window_rule ({
    name    = "slackRule"          ,
    match   = { class = "slack" }  ,
    opacity = "0.9"                ,
})
