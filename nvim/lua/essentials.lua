local option = vim.opt
local buffer = vim.b
local global = vim.g

-- Global Settings --
option.showmode = false
option.expandtab = true
option.backspace = { "indent", "eol", "start" }
option.tabstop = 4
option.shiftwidth = 4
option.shiftround = true
option.autoindent = true
option.smartindent = true
option.number = true
option.relativenumber = true
-- wildmenu 在命令行(:)有提示字元
option.wildmenu = ture
option.hlsearch = true
-- ignorecase smartcase 模糊搜索
option.ignorecase = true
option.smartcase = true
option.completeopt = { "menuone", "noselect" }
option.cursorline = true
option.termguicolors = true
-- 左邊會有一個空格
option.signcolumn = "yes"
option.autoread = true
option.title = true
option.swapfile = false
option.backup = false
option.updatetime = 50
-- 啟用滑鼠 a: 所有模式啟用
option.mouse = "a"
-- undofile 即是退出編輯檔案，重新回到該檔案還是可以undo
option.undofile = true
option.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')
-- exrc 在每個目錄可以寫 .nivm.lua 來配置 nvim
-- 針對不同項目單獨配置
option.exrc = true
-- 一行太長，不會超過一個頁面
option.wrap = true
-- 用 :vsplit 開啟檔案是在右邊
-- 預設是左邊
option.splitright = true
-- 複製到系統的剪貼簿
option.clipboard:append("unnamedplus")

-- Buffer Settings --
buffer.fileencoding = "utf-8"

-- Global Settings --
-- 設定 leader 鍵
-- <leader>
global.mapleader = " "

-- Key Mappings --
-- 禁制使用上下左右來控制 vim
vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>")
vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>")

vim.keymap.set("n", "<A-Tab>", "<cmd>bNext<CR>", { silent = true})
vim.keymap.set("n", "<leader>bc", "<cmd>bd<CR")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- 同步系統剪貼簿
vim.keymap.set({ "v", "n" }, "<leader>y", "\"+y")

-- 使用終端機
vim.keymap.set('n', 'tm', ':term<CR>')  -- 在普通模式下打開終端
vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]]) -- 在終端模式下返回普通模式
