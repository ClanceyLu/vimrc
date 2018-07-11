# 安装

目前仅在Mac平台测试安装
```
git clone https://github.com/ClanceyLu/vimrc.git $HOME/.vim_conf && cd $HOME/.vim_conf && ./install.sh
```
# 插件

## [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

### 作用
异步补全

### 配置

```
cd ~/.vim/plugged/YouCompleteMe
# 仅安装javascript支持
./install.py --js-completer
# 安装所有语言支持
./install.py --all
```
[更多](https://github.com/Valloric/YouCompleteMe#mac-os-x)

拷贝本`.ycm_extra_conf.py`到你的`HOME`目录
```
cp ~/.vim_conf/.ycm_extra_conf.py ~
```

## [vim-surround](https://github.com/tpope/vim-surround)

## [kshenoy/vim-signature](https://github.com/kshenoy/vim-signature)

# 快捷键

## Leader

Leader键映射为`,`

## 切换窗口

- 向下切换: `<C-j>`
- 向上切换: `<C-k>`
- 向左切换: `<C-h>`
- 向有切换: `<C-l>`

## 切换buffer

- 下一个buffer: `<Leader>n`
- 上一个buffer: `<Leader>p`

## 搜索

- 全局搜索(Ack): `<Leader>a`
- 取消搜索高亮: `<Leader><CR>`

## 文件

插件NERDTree
- 打开: `<C-n>`

### NERDTree快捷键

- 新建: `ma`
- 重命名(移动): 'mm'

## 代码折叠

- 打开/折叠: `za`
- 打开: `<SPACE>`
- 打开所有: `zR`
- 折叠所有: `zM`

# 其他

## 字体

推荐安装[Hack](https://github.com/source-foundry/Hack)


# TODO:

- 完善文档
- 更多语言支持
