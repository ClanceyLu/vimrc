set nu " 行号
set rnu " 动态行号
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

if has('python3')
    silent! python3 1
endif

set history=500
filetype plugin on
filetype indent on

set hlsearch " 搜索高亮

set mouse=a " 允许使用鼠标

set autoread " 文件发生变化，自动读取
set ignorecase " 搜索忽略大小写

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

" 切换窗口
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 修改插入光标的形状
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" map <leader>bd :Bclose<cr>:tabclose<cr>gT

" undo持久化
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.vim/undo
	" set undolevels=1000
	" set undoreload=1000
endif

" TODO: 根据安装自动生成目录
" let pluginPath=fnamemodify('my_plugins.vim', ':p')
try
    source ~/.vim_conf/my_plugins.vim
    " execute 'source '.pluginPath
catch
endtry

" 设置js等文件自动缩进两个空格
" autocmd FileType javascript,html,vue,css,md set ai
autocmd FileType javascript,html,vue,css,md set sw=2
autocmd FileType javascript,html,vue,css,md set ts=2
autocmd FileType javascript,html,vue,css,md set expandtab
" autocmd FileType javascript,html,vue,css,md set sts=2

try
	set guifont=Hack:h18
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
map <silent> <Leader><CR> :nohl<CR>

" 主题
let g:molokai_original = 1
let g:rehash256 = 1

try
    colorscheme molokai
catch
endtry

" let g:ale_fixers = {
            " \    'javascript': ['eslint'],
            " \}
" let g:ale_fix_on_save = 1

" nerdtree
map <Leader>nn :NERDTreeToggle<CR>

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
" let g:airline#extensions#tabline#enabled = 1

" let g:ycm_key_invoke_completion = '<c-z>'
" 关闭函数原型提示
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt=0
" 关闭代码检查
let g:ycm_show_diagonstics_ui=0

" vue
autocmd FileType vue syntax sync fromstart

" ack
map <Leader>a :Ack -i<Space>

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'

" let g:rainbow_active = 1

" javascript-vim
" augroup javascript_folding
"     au!
"     au FileType javascript setlocal foldmethod=syntax
" augroup END

map <Leader> <Plug>(easymotion-prefix)

" lightline
set laststatus=2

if has('nvim')
    let g:deoplete#enable_at_startup = 1
    inoremap <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ deoplete#mappings#manual_complete()
    function! s:check_back_space() abort "{{{
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~ '\s'
    endfunction"}}}
endif

let g:ctrlp_map='<C-p>'
let g:crtlp_cmd='CtrlP'

" 加载个人配置
try
    source ~/.vimrc.local
catch
endtry
