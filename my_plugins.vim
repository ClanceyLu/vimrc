" vim-plug
let vimPlug=$HOME.'/.vim/plugged'
call plug#begin(vimPlug)

if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
else
    Plug 'Valloric/YouCompleteMe'
endif

Plug 'terryma/vim-multiple-cursors'

" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plug 'ternjs/tern_for_vim'

Plug 'w0rp/ale'
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}
map <Leader>P :ALEFix<CR>

" Plug 'ybian/smartim'

" 注释
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Plug 'rbgrouleff/bclose.vim'

" Plug 'amix/open_file_under_cursor.vim'

Plug 'easymotion/vim-easymotion'

" ctrlp
Plug 'kien/ctrlp.vim'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" 自动闭合
Plug 'jiangmiao/auto-pairs'

Plug 'tomasr/molokai'

Plug 'chrisbra/NrrwRgn'

" Plug 'prettier/vim-prettier', {
"   \ 'do': 'npm install',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

" Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
let g:jsx_ext_required = 0

Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'junegunn/limelight.vim', { 'for': 'markdown' }

" Plug 'mattn/emmet-vim', { 'for': 'html' }

Plug 'posva/vim-vue', { 'for': 'vue' }

" Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

Plug 'airblade/vim-gitgutter'

Plug 'mileszs/ack.vim'

" 显示标记
Plug 'kshenoy/vim-signature'

" Plug 'luochen1990/rainbow'

Plug 'chr4/nginx.vim'

try
    source ~/.vim.plugins.local
catch
endtry

call plug#end()
