return {
    { "nvim-tree/nvim-web-devicons", lazy = true},
    {
        "goolord/alpha-nvim",
        config = function ()
            require("plugins.configs.alpha")
        end
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = { { "MunifTanjim/nui.nvim" }, {"nvim-lua/plenary.nvim"} },
        cmd = "Neotree",
        keys = {
            { "<leader>tt", "<cmd>Neotree toggle<CR>", desc = "Toggle Explorer" },
            { "<leader>tb", "<cmd>Neotree buffers toggle<CR>", desc = "Buffers Explorer" },
            { "<leader>tg", "<cmd>Neotree git_status toggle<CR>", desc = "git_status" },
            { "<leader>td", "<cmd>Neotree document_symbols<CR>", desc = "git_status" },
        },
        opts = {
            filesystem = {
                follow_current_file = true,     -- 智能地跟随当前文件
                use_libuv_file_watcher = true, -- 不需要手动刷新
                hide_dotfiles = false,          -- 显示隐藏文件
            },
            window = {
                mappings = {
                    ["<space>"] = "none",
                },
            },
            default_component_configs = {
                icon = {
                    folder_empty = "󰜌",
                    folder_empty_open = "󰜌",
                },
                git_status = {
                    symbols = {
                        renamed  = "󰁕",
                        unstaged = "󰄱",
                    },
                },
            },
            document_symbols = {
                kinds = {
                    File = { icon = "󰈙", hl = "Tag" },
                    Namespace = { icon = "󰌗", hl = "Include" },
                    Package = { icon = "󰏖", hl = "Label" },
                    Class = { icon = "󰌗", hl = "Include" },
                    Property = { icon = "󰆧", hl = "@property" },
                    Enum = { icon = "󰒻", hl = "@number" },
                    Function = { icon = "󰊕", hl = "Function" },
                    String = { icon = "󰀬", hl = "String" },
                    Number = { icon = "󰎠", hl = "Number" },
                    Array = { icon = "󰅪", hl = "Type" },
                    Object = { icon = "󰅩", hl = "Type" },
                    Key = { icon = "󰌋", hl = "" },
                    Struct = { icon = "󰌗", hl = "Type" },
                    Operator = { icon = "󰆕", hl = "Operator" },
                    TypeParameter = { icon = "󰊄", hl = "Type" },
                    StaticMethod = { icon = '󰠄 ', hl = 'Function' },
                }
            },
            source_selector = {
                sources = {
                    { source = "filesystem", display_name = " 󰉓 Files " },
                    { source = "git_status", display_name = " 󰊢 Git " },
                },
            },
        }
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("plugins.configs.lualine")
        end
    },
    {
        "akinsho/bufferline.nvim",
        keys = {
            { "<leader>bp", "<cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
            { "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
        },
        opts = {
            options = {
                -- 使用 nvim 内置lsp
                diagnostics = "nvim_lsp",
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left",
                    },
                },
            },
        },
    },
}
