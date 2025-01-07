return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    config = function()
      require("bufferline").setup()
    end
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
    config = function()
      require("ibl").setup()
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = function()
      require('gitsigns').setup({
        current_line_blame = true, --顯示每行的 commit 資訊
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns

          -- 定義快捷鍵
          local function map(mode, lhs, rhs, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, lhs, rhs, opts)
          end

          -- 快捷鍵配置
          map('n', ']c', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gs.next_hunk() end)
            return '<Ignore>'
          end, { expr = true })

          map('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
          end, { expr = true })

          -- 操作 hunk（更改塊）
          map('n', '<leader>hs', gs.stage_hunk) -- 暫存當前 hunk
          map('n', '<leader>hr', gs.reset_hunk) -- 重置當前 hunk
          map('v', '<leader>hs', function() gs.stage_hunk { vim.fn.line("."), vim.fn.line("v") } end)
          map('v', '<leader>hr', function() gs.reset_hunk { vim.fn.line("."), vim.fn.line("v") } end)

          map('n', '<leader>hS', gs.stage_buffer) -- 暫存整個檔案
          map('n', '<leader>hu', gs.undo_stage_hunk) -- 取消暫存
          map('n', '<leader>hR', gs.reset_buffer) -- 重置整個檔案

          -- 預覽 hunk
          map('n', '<leader>hp', gs.preview_hunk)

          -- 查看 blame 資訊
          map('n', '<leader>hb', function() gs.blame_line { full = true } end)

          -- 查看檔案差異
          map('n', '<leader>hd', function ()
            -- 與當前分支比較
            gs.diffthis('HEAD') -- 左邊是HEAD，右邊是當前檔案
          end)
          map('n', '<leader>hD', function()
            -- 與上一個提交比較
            gs.diffthis('~') -- 左邊是上一個提交的版本，右邊是當前檔案
          end)

          -- 快速切換符號顯示
          map('n', '<leader>ht', gs.toggle_signs) -- 開關符號顯示
          map('n', '<leader>hl', gs.toggle_linehl) -- 開關行高亮
          map('n', '<leader>hB', gs.toggle_current_line_blame) -- 開關行 blame
        end
      })
    end
  },
  {
    "goolord/alpha-nvim",
    event = "VeryLazy",
    config = function()
      require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
    end
  },
  {
    "RRethy/vim-illuminate",
    event = "VeryLazy",
    config = function()
      require('illuminate').configure()
    end
  },
}
