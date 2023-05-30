return {
    {
        "rcarriga/nvim-notify",
        keys = {
            {"<leader>n", "<cmd>Notifications<CR>"},
        },
        opts = {
            renfer = "compact",
        },
        config = function ()
            vim.notify = require("notify")
        end
    },

    -- 模糊查找 telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = '0.1.1',
        dependencies = { { "BurntSushi/ripgrep" } },
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<CR>" },
            { "<leader>fg", "<cmd>Telescope live_grep<CR>" },
            { "<leader>fb", "<cmd>Telescope buffers<CR>" },
            { "<leader>fh", "<cmd>Telescope help_tags<CR>" },
            -- { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>" },
            -- { "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>" },
            -- { "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>" },
            -- { "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>" },
        }
    },

    -- 内置终端 toggleterm
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        keys = {
            { "<leader>1", "<cmd>exe v:count1 . 'ToggleTerm'<CR>" },
            { "<leader>g", "<cmd>lua _lazygit_toggle() <CR>" },
            { "<leader>bt", "<cmd>lua _btop_toggle() <CR>" },
        },
        config = function()
            require("plugins.configs.toggleterm")
        end
    },

    -- markdown-preview
    {
        "iamcco/markdown-preview.nvim",
        lazy = true,
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
        keys = {
            { "<leader>mp", "<cmd>MarkdownPreview<CR>" },
            { "<leader>mps", "<cmd>MarkdownPreviewStop<CR>" },
            { "<leader>mpt", "<cmd>MarkdownPreviewToggle<CR>" },
        },
    },

    -- rnvimr
    {
        "kevinhwang91/rnvimr",
        lazy = true,
        keys = {
            { "<leader>rt", "<cmd>RnvimrToggle<CR>" },
            { "<leader>rr", "<cmd>RnvimrResize<CR>" },
        },
    },

    {
        "folke/which-key.nvim",
        lazy = true,
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        keys = {
            { "<leader>", "<cmd>WhichKey<CR>" },
            { "<leader>k", "<cmd>WhichKey '<Space>'<CR>" },
        },
        -- config = function ()
        --     require("plugins.configs.which-key")
        -- end
    }
}
