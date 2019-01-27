if has('python3')
    silent! python3 1
endif

try
    source ~/.vim_conf/basic.vim
    source ~/.vim_conf/filetype.vim
    source ~/.vim_conf/plugins.vim
    source ~/.vim_conf/msic.vim
    source ~/.vim_conf/gui.vim
    " 加载个人配置
    source ~/.vimrc.local
catch
endtry
" TODO: 根据安装自动生成目录
" let pluginPath=fnamemodify('my_plugins.vim', ':p')
