" vim-plug
let vimPlug=$HOME.'/.vim/plugged'
call plug#begin(vimPlug)

" vim | nvim {{{
if has('nvim')
else
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  " Plug 'Valloric/YouCompleteMe'
endif
" }}}

" deoplete {{{
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': 'javascript.jsx' }
let g:deoplete#sources#ternjs#filetypes = [
      \ 'jsx',
      \ 'javascript.jsx',
      \ 'vue'
      \ ]

let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort " {{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction " }}}
" }}}

" ale {{{
Plug 'w0rp/ale'
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
" }}}

" nerdcommenter 注释 {{{
Plug 'scrooloose/nerdcommenter'
" 注释前一个空格
let g:NERDSpaceDelims = 1
" 删除结尾空格
let g:NERDTrimTrailingWhitespace = 1
" 注释符号在最左边
let g:NERDDefaultAlign = 'left'

let g:NERDCompactSexyComs = 1
" }}}

" nerdtree {{{
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
map <Leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden = 1
let NERDTreeQuitOnOpen = 1
" nerdtree git plugin
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
" }}}

" fastfold {{{
Plug 'konfekt/fastfold'
nmap zuz <Plug>(FastFoldupdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes = ['x', 'X', 'a', 'A', 'o', 'O', 'c', 'C', 'u']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:javascript_fold = 1
" }}}

" msic plug {{{
Plug 'itchyny/vim-cursorword'
" Plug 'mhinz/vim-startify'  " start MUR
Plug 'Yggdroot/indentLine' " indentLine
" }}}

Plug 'junegunn/vim-easy-align'

" fzf {{{
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all', 'on': ['Files', 'Buffers', 'Ag'] }
Plug 'junegunn/fzf.vim', { 'on': ['Files', 'Buffers', 'Ag'] }
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

nmap <silent> <C-p> :Files<CR>
nmap <silent> <Leader>b :Buffers<CR>
nmap <silent> <Leader>a :Ag<CR>
" }}}

" vim register helper
Plug 'junegunn/vim-peekaboo'

" vim-choosewin {{{
Plug 't9md/vim-choosewin'
nmap - <Plug>(choosewin)
let g:choosewin_overlay_enable = 1
" }}}

" plug for theme {{{
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
" }}}

" undotree {{{
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
nmap <Leader>u :UndotreeToggle<CR>
" }}}

" 在新窗口打开选择内容 <Leader>nr
" Plug 'chrisbra/NrrwRgn', { 'on': 'NR' }

" typescript {{{
Plug 'leafgarland/typescript-vim', { 'for': 'ts' }
" if !exists("g:ycm_semantic_triggers")
"   let g:ycm_semantic_triggers = {}
" endif
" let g:ycm_semantic_triggers['typescript'] = ['.']
" }}}

" lightline {{{
Plug 'itchyny/lightline.vim'
set laststatus=2
set noshowmode
let g:lightline = {
            \ 'colorscheme': 'powerline',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
            \   'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
            \              [ 'lineinfo' ],
            \              [ 'percent' ], 
            \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'fugitive#head'
            \ },
            \ 'component_expand': {
            \  'statuslinetabs': 'LightlineStatuslineTabs',
            \  'linter_checking': 'lightline#ale#checking',
            \  'linter_warnings': 'lightline#ale#warnings',
            \  'linter_errors': 'lightline#ale#errors',
            \  'linter_ok': 'lightline#ale#ok',
            \ },
            \ 'component_type': {
            \     'linter_checking': 'left',
            \     'linter_warnings': 'warning',
            \     'linter_errors': 'error',
            \     'linter_ok': 'left'
            \ }
            \ }
function! LightlineStatuslineTabs() abort
    return join(map(range(1, tabpagenr('$')),
                \ '(v:val == tabpagenr() ? "[*] " : "") . lightline#tab#filename(v:val)'), " \u2b81 ")
endfunction

Plug 'maximbaz/lightline-ale'
let g:lightline#ale#indicator_checking = "\uf110"
" let g:lightline#ale#indicator_warnings = "\uf071"
" let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"
" }}}

" plug for markdown {{{
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'junegunn/limelight.vim', { 'for': 'markdown' }
" }}}

" plug for web {{{
" Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'darthmall/vim-vue', { 'for': 'vue' }
" autocmd FileType vue syntax sync fromstart
" autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

Plug 'mattn/emmet-vim', { 'for': 'html' }

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'maxmellon/vim-jsx-pretty', { 'for': 'javascript' }
" }}}

" plug for edit {{{
" 自动闭合
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
" 显示标记
Plug 'kshenoy/vim-signature'
function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" find and replace vim plugin
" :Far foo bar %
" :Fardo
Plug 'brooth/far.vim', { 'on': 'Far' }
" }}}

" plug for git {{{
Plug 'airblade/vim-gitgutter'
set updatetime=100

" vim-fugitive {{{
Plug 'tpope/vim-fugitive'
nmap <Leader>gt :Gstatus<CR>
nmap <Leader>gd :Gdiff<CR>
" }}}
" }}}

" plug for nginx {{{
Plug 'chr4/nginx.vim', { 'for': 'nginx' }
" }}}

" load local plugin {{{
try
  source ~/.vim.plugins.local
catch
endtry
" }}}

call plug#end()
