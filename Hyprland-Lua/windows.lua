-- Window Rules
hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
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

-- Tags
hl.window_rule({ tag = "browser",      match = { class = "^(Brave-browser(-beta|-dev|-unstable)?|zen-alpha|zen)$" } })
hl.window_rule({ tag = "terminal",     match = { class = "^(Alacritty|kitty|kitty-dropterm)$" } })
hl.window_rule({ tag = "screenshare",  match = { class = "^(com\\.obsproject\\.Studio)$" } })
hl.window_rule({ tag = "games",        match = { class = "^(gamescope|steam_app_\\d+)$" } })
hl.window_rule({ tag = "gamestore",    match = { class = "^([Ss]team)$" } })
hl.window_rule({ tag = "gamestore",    match = { title = "^([Ll]utris)$" } })
hl.window_rule({ tag = "gamestore",    match = { class = "^([Hh]eroic)$" } })
hl.window_rule({ tag = "file-manager", match = { class = "^([Tt]hunar|org\\.gnome\\.Nautilus|[Pp]cmanfm-qt|[Nn]emo)$" } })
hl.window_rule({ tag = "multimedia_video", match = { class = "^([Mm]pv|vlc)$" } })

-- Float rules
hl.window_rule({ match = { class = "org.gnome.Calculator" }, float = true })
hl.window_rule({ match = { class = "^([Qq]alculate-gtk)$" }, float = true })

hl.window_rule({match = { class = "^([Hh]eroic)$"},float = true})

hl.window_rule({
    match = { class = "^([Ss]team)$"}, float = true})

-- Special behaviors
hl.window_rule({ match = { tag = "games" }, no_blur = true, fullscreen = true })

-- Workspace assignments
hl.window_rule({ workspace = 1, match = { tag = "browser" } })
hl.window_rule({ workspace = 3, match = { class = "org\\.qbittorrent\\.qBittorrent" } })
hl.window_rule({ workspace = 4, match = { tag = "screenshare" } })
hl.window_rule({ workspace = 5, match = { tag = "gamestore" } })
hl.window_rule({ workspace = 8, match = { tag = "games" } })
hl.window_rule({ workspace = 9, match = { tag = "multimedia" } })

-- Opacity
hl.window_rule({
    opacity = "0.9 0.9",
match   = { tag = "file-manager" }
})
