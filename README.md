# My Vim Configuration

不再维护
使用[nvim](https://github.com/ClanceyLu/nvim)

- [安装](#安装)
- [添加自己的配置](#添加自己的配置)
    - [添加配置](#添加配置)
    - [添加插件](#添加插件)
- [快捷键](#快捷键)
- [插件列表](#插件列表)
- [个人vim使用心得](#个人vim使用心得)
- [卸载](#卸载)
- [TODO](#todo)

## 安装

目前仅在Mac平台测试安装
需要Vim 8.0+支持
```
git clone https://github.com/ClanceyLu/vimrc.git $HOME/.vim_conf && cd $HOME/.vim_conf && ./install.sh
```
## 添加自己的配置

### 添加配置

在`HOME`目录下新建`.vimrc.local`文件，并在其中添加自己的配置
如 将`<Leader>`映射为`<Space>`
```
let mapleader="\<Space>"
```

### 添加插件

在`HOME`目录下新建`.vimrc.plugins.local`文件，在其中添加插件
如 安装`lightline.vim`
```
Plug 'itchyny/lightline.vim'
```
插件管理使用[vim-plug](https://github.com/junegunn/vim-plug)，点击查看更多配置信息

## 快捷键

`C`表示`Ctrl`/`Control`
`<C-j>`表示`Control`和`j`一起按下
`<CR>`表示回车
`<Leader>`是vim的Leader键，默认为反斜线，本配置配置中改为`,`
`<Leader>a`表示先按下`<Leader>`键，再按`a`

### Leader

Leader键映射为`,`
```
let mapleader=','
```

### 切换窗口

使用`<C-j>`,`<C-k>`,`<C-h>`,`<C-l>`上下左右切换窗口
```
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
```

### 切换buffer

- 下一个buffer: `<Leader>n`
- 上一个buffer: `<Leader>p`

### 搜索

- 全局搜索(~~Ack~~ Ag): `<Leader>a`
- 取消搜索高亮: `<Leader><CR>`

### 文件

插件NERDTree
- 打开/关闭: `<C-e>`

### 代码折叠

- 打开/折叠: `za`
- 打开: `<SPACE>`
- 打开所有: `zR`
- 折叠所有: `zM`

### 注释

- 注释: `<Leader>cc`
- 取消: `<Leader>cu`

注: 可以使用`V`进入Visual模式，使用`j`/`k`选择多行，再使用快捷键可以注释/取消多行
也可以使用`5<Leader>cc`注释5行

## 插件

### ~~[YouCompleteMe](https://github.com/Valloric/YouCompleteMe)~~

### [vim-surround](https://github.com/tpope/vim-surround)

### [vim-signature](https://github.com/kshenoy/vim-signature)

### [ale](https://github.com/w0rp/ale)

### [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

### ~~[ctrlp](https://github.com/kien/ctrlp.vim)~~

### [fzf.vim](https://github.com/junegunn/fzf.vim)

## 其他

### 字体

推荐安装[Hack](https://github.com/source-foundry/Hack)

## 个人vim使用心得

一些vim使用技巧，自己从入门开始一步一步踩过的坑，希望能够帮助有需要的人

欢迎讨论和提出意见

## 卸载
```
rm -rf ~/.vim .vimrc
```
如果之前你有配置，在你的`HOME`目录下应该会有一个`.vim_xxx`和`.vimrc_xxx`的备份文件
通过`mv`还原它们
```
mv .vim_xxx .vim
mv .vimrc_xxx .vimrc
```

## TODO:

- 坚持完善文档
- 更多语言支持
- 写个人vim使用心得
