set nu " 行号
set rnu " 动态行号
syntax enable " 语法高亮
set encoding=utf-8 " 编码格式
set smarttab
set si " smart indent
set ai " 自动缩进
set sw=4
set ts=4
set sts=4
set expandtab
set history=500
filetype plugin on
filetype indent on

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

set hlsearch " 搜索高亮
set incsearch " 输入高亮

set lazyredraw
set wildmenu

set mouse=a " 允许使用鼠标

set autoread " 文件发生变化，自动读取
set ignorecase " 搜索忽略大小写
set smartcase
set magic

" 禁止声音
set noerrorbells
set novisualbell
set t_vb=
set tm=500

if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" set foldenable
set foldmethod=syntax
" set foldlevelstart=99 " 默认不折叠
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" 光标在上次编辑位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 不备份文件
set nobackup
set nowb
set noswapfile

" undo持久化
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.vim/undo
	" set undolevels=1000
	" set undoreload=1000
endif

" 高亮当前列
" set cursorcolumn

" 高亮当前行
set cursorline
" highlight CursorLine   cterm=NONE ctermbg=blue ctermfg=NONE guibg=NONE guifg=NONE
" highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

" 设置js等文件自动缩进两个空格
" autocmd FileType javascript,html,vue,css,md set ai
autocmd FileType javascript.jsx,html,vue,css,md,less set sw=2
autocmd FileType javascript.jsx,html,vue,css,md,less set ts=2
autocmd FileType javascript.jsx,html,vue,css,md,less set expandtab
" autocmd FileType javascript,html,vue,css,md set sts=2

" 修改<Leader>为','
let mapleader=','

map <Leader>bn :bn<CR>
map <Leader>bp :bp<CR>
map <silent> <Leader><CR> :nohl<CR>
" 切换窗口
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <Leader>/ :vsp<CR>

map <Leader>bd :bufdo bd<CR>
map <Leader>w :wall!<CR>
command W w !sudo tee % > /dev/null

" nmap <M-j> mz:m+<CR>`z
" nmap <M-k> mz:m-2<CR>`z

" 设置滚动页首页页尾7行间距
set so=7

" 设置md文件类型未markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown

