set nu " 行号
syntax on " 语法高亮
set encoding=utf-8 " 编码格式
set smarttab
set si " smart indent
set autoindent " 自动缩进
set sw=4
set ts=4
set sts=4
set expandtab
set wrap

set history=500
filetype plugin on
filetype indent on

set hlsearch " 搜索高亮

set mouse=a " 允许使用鼠标

set autoread " 文件发生变化，自动读取
set ignorecase " 搜索忽略大小写

" 光标在上次编辑位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" undo持久化
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.vim/undo
	" set undolevels=1000
	" set undoreload=1000
endif

" 设置js等文件自动缩进两个空格
" autocmd FileType javascript,html,vue,css,md set ai
autocmd FileType javascript,html,vue,css,md set sw=2
autocmd FileType javascript,html,vue,css,md set ts=2
autocmd FileType javascript,html,vue,css,md set expandtab
" autocmd FileType javascript,html,vue,css,md set sts=2

try
	set guifont=Hack:h16
catch
endtry

if has('gui_running')
	" some code
	" set background=light
	set transparency=10
	set guifont=Hack:h16
end

" 设置md文件类型未markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown


" 高亮当前列
" set cursorcolumn

" 高亮当前行
set cursorline
" highlight CursorLine   cterm=NONE ctermbg=blue ctermfg=NONE guibg=NONE guifg=NONE
" highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

" 修改<Leader>为','
let mapleader=','

map <Leader>n :bn<CR>
map <Leader>p :bp<CR>

" vim-plug
let vimPlug=$HOME.'/.vim/plugged'
call plug#begin(vimPlug)

Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" 注释
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'

" 自动闭合
Plug 'jiangmiao/auto-pairs'

Plug 'tomasr/molokai'

Plug 'vim-airline/vim-airline'

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }

Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'junegunn/limelight.vim', { 'for': 'markdown' }

Plug 'mattn/emmet-vim', { 'for': 'html' }

Plug 'posva/vim-vue', { 'for': 'vue' }

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

Plug 'airblade/vim-gitgutter'

Plug 'mileszs/ack.vim'

" Plug 'luochen1990/rainbow'

call plug#end()

" 主题
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" nerdcommenter
" 注释前一个空格
let g:NERDSpaceDelims = 1
" 删除结尾空格
let g:NERDTrimTrailingWhitespace = 1
" 注释符号在最左边
let g:NERDDefaultAlign = 'left'

let g:NERDCompactSexyComs = 1

" let g:NERDCommentEmptyLines = 1

" gitgutter
set updatetime=100

" airline
let g:airline#extensions#tabline#enabled = 1

" vue
autocmd FileType vue syntax sync fromstart

" ack
map <Leader>a :Ack -i<Space>

" let g:rainbow_active = 1
