return {
    {
        "rhysd/accelerated-jk",
        config = function()
            vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)")
            vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)")
        end
    },
    {
        "folke/persistence.nvim",
        config = function()
            require("persistence").setup()
            vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end)
            vim.keymap.set("n", "<leader>qS", function() require("persistence").select() end)
            vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end)
            vim.keymap.set("n", "<leader>qd", function() require("persistence").stop() end)
        end
    },
    {
        "windwp/nvim-autopairs",
        opts = {
            enable_check_bracket_line = false,
        },
    },
    {
        "ethanholz/nvim-lastplace",
        config = true,
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        -- stylua: ignore
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
    },
    {
        "kamykn/spelunker.vim",
        config = function()
            vim.g.spelunker_check_type = 2
        end
    },
    {
        "ellisonleao/glow.nvim",
        config = true,
        cmd = "Glow"
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        config = function()
            require("neo-tree").setup()
            vim.keymap.set({"n", "v"}, "<leader>e", [[<cmd>Neotree toggle<CR>]])
        end
    },
    {
        "folke/which-key.nvim",
        config = true,
    },
    {
        "echasnovski/mini.ai",
        config = true,
    },
    {
        "echasnovski/mini.comment",
        config = function()
            require('mini.comment').setup({
                mappings = {
                    comment = 'gcc',
                    comment_line = 'gcc',
                    textobject = 'gc',
                },
            })
            vim.api.nvim_set_keymap("n", "<C-_>", "gcc", {})
            vim.api.nvim_set_keymap("v", "<C-_>", "gc", {})
        end
    },
    {
        "s1n7ax/nvim-window-picker",
        config = function()
            require('window-picker').setup({
                include_current_win = true,
                bo = {
                    filetype = { "fidget", "neo-tree" }
                }
            })
            vim.keymap.set("n",
                "<c-w>p",
                function()
                    local window_number = require('window-picker').pick_window()
                    if window_number then vim.api.nvim_set_current_win(window_number) end
                end
            )
        end,
    }
}
