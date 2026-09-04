--################
--## WORKSPACES ##
--################

hl.workspace_rule({
    workspace = 1,
    monitor = "DP-1",
})

hl.workspace_rule({
    workspace = 2,
    monitor = "DP-2",
})

hl.workspace_rule({
    workspace = 3,
    monitor = "DP-2",
})

hl.window_rule({
    name  = "discord",
    match = {
        class = "discord",
    },
    workspace = 2,
})

hl.window_rule({
    name  = "spotify",
    match = {
        class = "Spotify",
    },
    workspace = 2,
})

hl.window_rule({
    name  = "steam_launcher",
    match = {
        class = "steam",
    },
    workspace = 3,
})

hl.window_rule({
    name = "steam_app",
    match = {
        class = "^steam_app_*",
    },
    workspace = 1,
    rounding = 0,
})

hl.window_rule({
    name  = "cookieclicker",
    match = {
        class     = "steam_app_1454400",
    },
        workspace = "special:magic",
})
