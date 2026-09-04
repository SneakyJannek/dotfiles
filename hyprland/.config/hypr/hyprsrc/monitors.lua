--###############
--## MONITORS ###
--###############

hl.monitor({
    output   = "DP-1",
    mode     = "1920x1080@100.00Hz",
    position = "0x0",
    scale    = "auto",
})

hl.monitor({
    output   = "DP-2",
    mode     = "1920x1080@60.00Hz",
    position = "auto",
    scale    = "auto",
})

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080",
    position = "auto",
    scale    = "auto",
    mirror = "DP-1",
})
