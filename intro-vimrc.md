" 放在~/.vimrc"
" basic
set nocompatible "關閉與vi兼容性，編輯增強介面改進"
syntax enable"語法識別"
syntax on "開啟語法高亮"
set number "顯示行數"
set relativenumber "顯示相對行號"
set nowrap "禁止自動換行"
set t_Co=256 "支援256色"

" edit setting
set tabstop=4 "設定tab寬度為4個空格"
set shiftwidth=4 "設定縮進寬度為4個空格 <<, >>縮進時"
set expandtab "把tab轉換為相應數量的空格"
" 自動縮排｜autoindent/ smartindent/ cindent"
set autoindent "跟上一行一樣"
set smartindent "智能縮進"
set mouse=a "啟用游標選取，滾輪可以直接滑動頁面(非移動游標)"
set mouse="" "停用游標選取，滾輪只會移動游標光標位置"
set ruler "(預設)顯示右下角，行列，目前文件的位置"
set backspace=2 "(預設)insert模式中，啟用backspace鍵"
set history=1000 "保留1000個使用過的指令"
set formatoptions+=r "自動註解"
filetype indent on "啟用依照檔案類型，決定自動縮排的樣式與功能"
set clipboard=unnamedplus "與本機共享複製區"

" search setting
set ignorecase "搜尋時忽略大小寫"
set smartcase "搜尋時包含大寫，則不忽略大小寫"
set hlsearch "高亮搜尋結果"
set incsearch "輸入搜尋模式時即時顯示搜尋結果"

" view setting
set cursorline "高量當前行"
highlight CursorLine cterm=NONE ctermbg=240 ctermfg=NONE "配置當前行有白底"
set background=dark "與vim說terminal背景色"
set showmode "在狀態欄顯示Vim的模式"
colorscheme desert "內建風格"
set showmatch "顯示括弧的配對情況"
set scrolloff=10 "光標上下移動時保持最小行數"

" document setting
set backup "啟用文件備份功能"
set writebackup "在覆蓋文件前創建備份"
set backupdir=~/.vim/backup//  "指定備份文件的存儲目錄"
set undodir=~/.vim/undo// "指定undo歷史文件的儲存目錄"
set undofile "啟用undo文件功能，允許在重啟後還可以undo"
autocmd FileType php set omnifunc=phpcomplete#CompletePHP "按下ctrl+n會有php語法提示"


" key Mapping
inoremap( ()<ESC>i "在insert模式，只要輸入(，vim會執行輸入() -> <ESC>進入command模式-> i進入insert模式，游標就會在()支間"
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap jj <ESC>:<backspace>
" inoremap  triger_char  mapping_str"
" 映射指令     觸發字元     映射字串"
" 註：<LEFT> 為向右鍵字元，<CR>代表換行，<ESC>跳出"
" 另外inoremap後面無法再使用"雙引號來註解"
