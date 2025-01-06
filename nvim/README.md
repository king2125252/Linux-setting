# nvim 配置說明

## lua 配置放哪裡呢?
- windows
- 將 init.lua  與 lua/資料夾配置放入
- 如果沒有 nvim 資料夾請自行建立
```bash
C:\User\<使用者>\AppData\Local\nvim
```

- MacOS
- 放在家目錄下的 .config/nvim
```bash
~/.config/nvim
```

## 0. windows 下載 choco
- choco 是 windows 的套件管理器
- macOS 則使用 homebrew
- 下載 choco 時，都使用 powershell 管理員模式!!
```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; `
[System.Net.ServicePointManager]::SecurityProtocol = `
[System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

## 1. 需要下載字體
- Hack Nerd font
- windows macOS 都可以下載使用
- https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file#option-3-unofficial-chocolatey-or-scoop-repositories
- 套件有些 icons 會用到，不使用 icons 無法正常顯示

```bash
# windows choco install
choco install nerd-fonts-hack
```

```bash
# MacOS homebrew install
brew install font-hack-nerd-font
```

## 2. 下載nvim
- https://github.com/neovim/neovim/blob/master/INSTALL.md

- MacOS 可以使用 homebrew install
- 詳情請參考: https://formulae.brew.sh/formula/neovim#default
```bash
brew install neovim
brew upgrade neovim # 更新
```

- window 使用 choco install
- 使用 choco 都要使用 powershell 的管理員模式
```bash
choco install neovim -y
choco upgrade neovim -y # 更新
```

## 3. 下載 ripgrep fzf
- 在 Telescope 模糊搜尋套件會使用到

- MacOS 使用 homebrew install
```bash
brew install ripgrep fzf
```

- windows 使用 choco install
- choco 在下載套件的時候，都是使用 powershell 的管理員模式
```bash
choco install ripgrep -y
choco install fzf -y
```

## 4. 下載 mingw make
-- 在 Telescope 套件會使用到

- Windows 使用 choco install
- 使用 choco 必須使用 powershell 管理員模式
```bash
choco install mingw --force -y
gcc --version
choco install make -y
make --version
```

- MacOS 使用 homebrew install
- MacOS 下載時，可以先下查詢版本，看是不是已經下載過了
```bash
clang --version # 先看是否已經下載過了
brew install llvm
# 如果沒有 clang 可以下載 gcc
brew install gcc
gcc --version
# 配置環境變數
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
brew install make
make --version
```

## 5. windows ocaml install
- https://ocaml.org/docs/ocaml-on-windows
```bash
winget install Git.Git OCaml.opam
opam --version
opam install ocaml-lsp-server
which ocamllsp
```

## 套件url
- https://github.com/neovim/neovim
- https://lazy.folke.io/
- https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file#option-3-unofficial-chocolatey-or-scoop-repositories
- https://github.com/folke/tokyonight.nvim?tab=readme-ov-file
- https://github.com/nvim-lualine/lualine.nvim
- https://github.com/utilyre/barbecue.nvim
- https://github.com/akinsho/bufferline.nvim
- https://github.com/lukas-reineke/indent-blankline.nvim 
- https://github.com/lewis6991/gitsigns.nvim
- https://github.com/goolord/alpha-nvim?tab=readme-ov-file
- https://github.com/RRethy/vim-illuminate
- https://github.com/nvim-telescope/telescope.nvim
- https://github.com/nvim-telescope/telescope-fzf-native.nvim
- https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua
- https://github.com/nvim-treesitter/nvim-treesitter 
- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
- https://github.com/rhysd/accelerated-jk
- https://github.com/folke/persistence.nvim
- https://github.com/windwp/nvim-autopairs
- https://github.com/ethanholz/nvim-lastplace
- https://github.com/folke/flash.nvim
- https://github.com/kamykn/spelunker.vim
- https://github.com/ellisonleao/glow.nvim
- https://github.com/nvim-neo-tree/neo-tree.nvim
- https://github.com/folke/which-key.nvim
- https://github.com/echasnovski/mini.ai
- https://github.com/echasnovski/mini.comment
- https://github.com/s1n7ax/nvim-window-picker
- https://neovim.io/doc/user/lsp.html
- https://github.com/neovim/nvim-lspconfig
- https://github.com/williamboman/mason.nvim
- https://github.com/williamboman/mason-lspconfig.nvim
- https://github.com/folke/neoconf.nvim
- https://github.com/folke/neodev.nvim
- https://github.com/j-hui/fidget.nvim?tab=readme-ov-file#options 
- https://github.com/nvimdev/lspsaga.nvim
- https://github.com/hrsh7th/nvim-cmp
- https://github.com/FledgeXu/NeovimZero2Hero/blob/main/lua/plugins/cmp.lua
- https://github.com/rafamadriz/friendly-snippets
- https://github.com/L3MON4D3/LuaSnip
- https://github.com/folke/lazy.nvim
