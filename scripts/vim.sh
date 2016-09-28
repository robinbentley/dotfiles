# create swap dir
mkdir ~/.vim/swap

# get and install vim-plug
if [ -e "$HOME/.vim/autoload/plug.vim" ]; then
  echo "vim-plug is already installed..."
else
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# link up vimrc
ln -sfv $HOME/dotfiles/vimrc $HOME/.vimrc

# install plugins
vim +PlugInstall +qall
