" ===============================================================================
" " General Configuration
" "
" ===============================================================================
set nocompatible 	" 关闭兼容模式

" Tab and Indent
set tabstop=4 		" 设置Tab长度为4空格
"set shiftwidth=4 	" 设置自动缩进长度为4空格
set autoindent 		" 继承前一行的缩进方式，适用于多行注释
set smartindent		" 根据文件中其他地方的缩进空格个数来确定一个 tab 是多少个空格
set wildmenu    	"按TAB键时命令行自动补齐"

" Search and Match
set hlsearch  		" 高亮搜索结果
set incsearch 		" 开启实时搜索
set smartcase		" 如果有一个大写，则开启敏感
set ignorecase		" 搜索时大小写不敏感
set showmatch 		" 显示括号匹配

" Display
set cursorline 		" 突出显示当前行
set nu 				" 设置行号
set showmode  		" 显示当前模式
set t_Co=256  		" If under tty, use 256
set ruler			"显示当前光标位置"
set clipboard+=unnamed  " 使用系统粘贴板

" 在某些情况下,退格键backspace不管用"
"
" set nocompatible 	" 关闭兼容模式,这是由于vi模式中导致的backspace
" backspace有几种工作方式，默认是vi兼容的。对新手来说很不习惯。
"indent: 如果用了:set indent,:set ai 等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
"eol:如果插入模式下在行开头，想通过退格键合并两行，需要设置eol。
"start：要想删除此次插入前的输入，需设置这个。
set backspace=indent,eol,start

" Other
set autochdir		"当前目录随着被编辑文件的改变而改变"
set nobackup       	" 表示不需要备份文件
set noswapfile 		"表示不创建临时交换文件
set nowritebackup 	"表示编辑的时候不需要备份文件
set noundofile 		"表示不创建撤销文件
" Press `shift` while selecting with the mouse can disable into visual mode
" " In mac os, hold `alt/option` is easier
" " ref:
" http://stackoverflow.com/questions/4608161/copy-text-out-of-vim-with-set-mouse-a-enabled
" set mouse=a  "运行使用鼠标

" Bind Keys
" 定义快捷键的前缀，即<Leader>
let mapleader=";" 
"  " <C-l>: quick temp disable hlsearch
"  nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
" ==== 系统剪切板复制粘贴 ====
"v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
"n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
"n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p
"  括号自动补全
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

" tab 标签页切换快捷键: ;1即代表切换到标签页1
:nn <Leader>1 1gt
:nn <Leader>2 2gt
:nn <Leader>3 3gt
:nn <Leader>4 4gt
:nn <Leader>5 5gt
:nn <Leader>6 6gt
:nn <Leader>7 7gt
:nn <Leader>8 8gt
:nn <Leader>9 8gt
:nn <Leader>0 :tablast<CR>

" vim中切换窗口快捷键:即Ctr+w hjkl -> ;hjkl
:nn <Leader>w <C-w>w
:nn <Leader>h <C-w>h
:nn <Leader>j <C-w>j
:nn <Leader>k <C-w>k
:nn <Leader>l <C-w>l


syntax enable
syntax on                    " 开启文件类型侦测
filetype on
filetype plugin indent on    " 启用自动补全

" 退出插入模式指定类型的文件自动保存
au InsertLeave *.go,*.sh,*.php write

" ===============================================================================
" " Vundle Configuration
" "
" ===============================================================================
set nocompatible              " be iMproved, required
" filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

" NerdTree
Plugin 'preservim/nerdtree' 

" NerdTreeGit 在NerdTree中显示git信息
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Theme
Plugin 'flazz/vim-colorschemes'

" YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'

" Go
" Plugin 'fatih/vim-go'
" Plugin 'SirVer/ultisnips'
" Plugin 'AndrewRadev/splitjoin.vim'

" Vim-Airline"
Plugin 'vim-airline/vim-airline'

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ===============================================================================
" " Theme Configuration
" "
" ===============================================================================

" let g:gruvbox_(option) = '(value)' " 在colorscheme gruvbox前进行设置
" let g:gruvbox_contrast_light = 'medium' " light模式对比度: soft medium hard
" let g:gruvbox_contrast_dark = 'medium' " dark模式对比度: soft medium hard
colorscheme gruvbox
set background=dark    " Setting dark/light mode

" ===============================================================================
" " NerdTree Configuration
" "
" ===============================================================================
" F10 打开/关闭NerdTree
map <F10> :NERDTreeToggle<CR>  
" 显示行号
let NERDTreeShowLineNumbers=1
" 打开文件时是否显示目录
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=0
" 设置宽度
" let NERDTreeWinSize=31
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 打开 vim 文件及显示书签列表
let NERDTreeShowBookmarks=2
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" NerdTree为最后windows时,自动关闭
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" 打开Vim时 Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror"

"==============================================================================
""  nerdtree-git-plugin 插件
"==============================================================================
let g:NERDTreeGitStatusIndicatorMapCustom = {
	                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

""==============================================================================
"""  vim-go 插件
""==============================================================================
"" GoVim中GoBuild的quickfix窗口跳转
"map <Leader>o :copen<CR>
"map <Leader>n :cnext<CR>
"map <Leader>m :cprevious<CR>
"map <Leader>a :cclose<CR>
"
"" locationlist窗口跳转
"map <Leader>lo :lopen<CR>
"map <Leader>ln :lnext<CR>
"map <Leader>lm :lprevious<CR>
"map <Leader>la :lclose<CR>
"" 自动保存进行goimports"
"let g:go_fmt_command = "goimports"
"" snake_case or camelcase"
"let g:go_addtags_transform = "camelcase"
"" 只是用quickfix窗口"
"" let g:go_list_type="quickfix"
"" 加一些高亮"
"let g:go_version_warning = 1
"let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_function_calls = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_generate_tags = 1

""==============================================================================
"""  YCM 插件
""==============================================================================
"" LocationList窗口操作
"""map <Leader>o :copen<CR>
"""map <Leader>n :cnext<CR>
"""map <Leader>m :cprevious<CR>
"""map <Leader>a :cclose<CR>
"
""打开Symbol Search窗口，退出窗口使用C-w w"
"nmap <leader>yfw <Plug>(YCMFindSymbolInWorkspace)
"nmap <leader>yfd <Plug>(YCMFindSymbolInDocument)
"
"" 代码跳转"
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <leader>jdf :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>jdc :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>st :YcmCompleter GetType<CR>
"
"" 显示当前文件所有诊断信息"
"nmap <F4> :YcmDiags<CR>
"
"" 几个重要的默认快捷键"
""let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
""let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
"
"" YCM白名单
"let g:ycm_filetype_whitelist = { 
"			\ "c":1,
"			\ "cpp":1, 
"			\ "objc":1,
"			\ "sh":1,
"			\ "zsh":1,
"			\ "zimbu":1,
"			\ "go":1,
"			\ "mod":1,
"			\ }
"
"==============================================================================
""  UltiSnips 插件
"==============================================================================
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_list_stop_completion = ['<C-y>']

" better key bindings for UltiSnipsExpandTrigger
""let g:UltiSnipsExpandTrigger = "<tab>"
""let g:UltiSnipsJumpForwardTrigger = "<tab>"
""let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
