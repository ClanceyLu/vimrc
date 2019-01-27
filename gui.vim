try
    set guifont=Hack:h18
catch
endtry

if has('gui_running')
    " some code
    " set background=light
    set transparency=10
    set macligatures
    " set guifont=Fira\ Code:h14
    set guifont=Hack:h14
    " au GUIEnter * simalt ~x
    set guioptions-=L
    set guioptions-=r
    set guioptions-=T
    set guioptions-=m
    set guioptions=
endif

" 主题
" let g:molokai_original = 1
let g:rehash256 = 1

set t_Co=256

try
    colorscheme gruvbox
    set background=dark
    " colorscheme molokai
catch
endtry
