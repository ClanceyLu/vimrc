" javascript file {{{
augroup filetype_javascript
    autocmd!
    " autocmd FileType javascript,html,vue,css,md set ai
    autocmd FileType javascript,javascript.jsx,html,vue,css,md,less setlocal shiftwidth=2
    autocmd FileType javascript,javascript.jsx,html,vue,css,md,less setlocal tabstop=2
    autocmd FileType javascript,javascript.jsx,html,vue,css,md,less setlocal expandtab
    autocmd FileType javascript,javascript.jsx,html,vue,css,md,less setlocal softtabstop=2
    autocmd FileType javascript,javascript.jsx,html,vue,css,md,less setlocal foldmethod=syntax
augroup END
" }}}

" VimScript file {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
