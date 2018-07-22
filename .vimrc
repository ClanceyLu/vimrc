try
    source ~/.vim_conf/basic.vim
catch
endtry
if has('python3')
    silent! python3 1
endif
" TODO: 根据安装自动生成目录
" let pluginPath=fnamemodify('my_plugins.vim', ':p')
try
    source ~/.vim_conf/my_plugins.vim
    " execute 'source '.pluginPath
catch
endtry

try
	set guifont=Hack:h18
catch
endtry

if has('gui_running')
	" some code
	" set background=light
	set transparency=10
	set guifont=Hack:h14
    " au GUIEnter * simalt ~x
    set guioptions-=L
    set guioptions-=r
endif

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
map <C-e> :NERDTreeToggle<CR>

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
