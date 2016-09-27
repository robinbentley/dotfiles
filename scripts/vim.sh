# create swap dir
mkdir ~/.vim/swap

# get and install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# link up vimrc
ln -sfv $HOME/dotfiles/vimrc $HOME/.vimrc

# install plugins from cli
vim +PlugInstall +qall
