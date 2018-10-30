" javascript file {{{
augroup filetype_javascript
    autocmd!
    " autocmd FileType javascript,html,vue,css,md set ai
    autocmd FileType javascript.jsx,html,vue,css,md,less set shiftwidth=2
    autocmd FileType javascript.jsx,html,vue,css,md,less set tabstop=2
    autocmd FileType javascript.jsx,html,vue,css,md,less set expandtab
    autocmd FileType javascript.jsx,html,vue,css,md,less set softtabstop=2
augroup END
" }}}

" VimScript file {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
