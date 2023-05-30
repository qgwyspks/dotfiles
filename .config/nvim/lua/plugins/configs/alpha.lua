local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    [[██╗██╗  ██╗██╗   ██╗███╗   ██╗]],
    [[██║██║ ██╔╝██║   ██║████╗  ██║]],
    [[██║█████╔╝ ██║   ██║██╔██╗ ██║]],
    [[██║██╔═██╗ ██║   ██║██║╚██╗██║]],
    [[██║██║  ██╗╚██████╔╝██║ ╚████║]],
    [[╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝]],
}

local button = dashboard.button

dashboard.section.buttons.val = {
    button("i", "  > New file", ":ene <CR>"),
    button("n", "  > New file", ":ene <BAR> startinsert <CR>"),
    button("f", "  > Find file", ":Telescope find_files <CR>"),
    button("r", "  > Recent files", ":Telescope oldfiles <CR>"),
    button("l", "󰒲  > Lazy", ":Lazy <CR>"),
    button("q", "  > Quit", ":qa <CR>"),
}

require("alpha").setup(dashboard.opts)

