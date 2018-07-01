now=`date +%Y%m%d_%s`
echo $HOME
path=`pwd`
echo $path
mv "$HOME/.vimrc" "$HOME/.vimrc.$now"
mv "$HOME/.vim" "$HOME/.vim.$now"
ln -s "$path/.vimrc" "$HOME/.vimrc"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall
echo 'Install Suc'
