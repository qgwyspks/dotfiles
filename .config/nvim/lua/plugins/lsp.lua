return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate", -- :MasonUpdate updates registry contents
        cmd = "Mason",
        keys = { { "<leader>m", "<cmd>Mason<cr>", desc = "Mason" } },
        opts = {
        },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "bashls", -- Bash
                -- "clangd",                          -- C/C++
                -- "csharo_ls",                       -- C#
                -- "cmake",                           -- CMake
                -- "dockerls",                        -- Docker
                -- "docker_compose_language_service", -- Docker Compose
                "gopls",    -- Go
                "jsonls",   -- JSON
                "lua_ls",   -- Lua
                "marksman", -- MarkDown
                "pyright",  -- Python
                "sqls",     -- SQL
                "taplo",    -- TOML
            }
        }
    },
    {
        "neovim/nvim-lspconfig",
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        opts = { function()
            local null_ls = require("null-ls")
            return {
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.diagnostics.eslint,
                    null_ls.builtins.completion.spell,
                    null_ls.builtins.code_actions.gomodifytags, -- 修改结构字段标记的 Go 工具
                    null_ls.builtins.code_actions.shellcheck,   -- Shell 脚本语法检查
                    null_ls.builtins.completion.luasnip,        -- LuaSnip 补全
                },
            }
        end }
    },
    -- {
    --     "mfussenegger/nvim-dap",
    -- }
    {
        "hrsh7th/nvim-cmp",
        version = false, -- last release is way too old
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",   -- 缓冲区补全
            "hrsh7th/cmp-path",   -- 路径补全
            "hrsh7th/cmp-cmdline", -- 命令补全
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
        opts = function()
            local cmp = require("cmp")
            return {
                completion = {
                    completeopt = "menu,menuone,noinsert",
                },
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
                    ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                    ["<S-CR>"] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true,
                    }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "buffer" },
                    { name = "path" },
                }),
                experimental = {
                    ghost_text = {
                        hl_group = "LspCodeLens",
                    },
                },
            }
        end,
    }
}
