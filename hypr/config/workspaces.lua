-- Workspace rules wiki https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- Add your workspace rules here. Increment the workspace number as you go. Do not have duplicate workspaces.
hl.workspace_rule({ workspace = "name:gaming", monitor = PRIMARY_MONITOR, default = true })
hl.workspace_rule({ workspace = "1", monitor = MONITOR1, default = true, persistent = true })
hl.workspace_rule({ workspace = "2", monitor = MONITOR1, default = true, persistent = true })
hl.workspace_rule({ workspace = "3", monitor = MONITOR1, default = true, persistent = true })
hl.workspace_rule({ workspace = "4", monitor = MONITOR1, default = true, persistent = true })
hl.workspace_rule({ workspace = "5", monitor = MONITOR1, default = true, persistent = true })
-- hl.workspace_rule({ workspace = "6", monitor = MONITOR2, default = true, persistent = true })

-- For other layouts such as scrolling, see example below
-- hl.workspace_rule({ workspace = "1", monitor = MONITOR1, default = true, persistent = true, layout = scroling })

hl.window_rule({ tag = "+gamestore", match = { class = "^([Ss]team)$" } })
hl.window_rule({ tag = "+gamestore", match = { class = "net.lutris.Lutris|lutris" } })
hl.window_rule({ tag = "+gamestore", match = { class = "heroic" } })


hl.window_rule({ workspace = 1, match = { initial_class = "zen" }})
hl.window_rule({ workspace = 3, match = { class = "org\\.qbittorrent\\.qBittorrent" }})
hl.window_rule({ workspace = 5, match = { tag = "gamestore" }})
