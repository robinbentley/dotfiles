# create necessary dirs
mkdir -p ~/.vim/swap

# link vimrc
ln -sfv ~/dotfiles/vim/vimrc ~/.vimrc

# install vim-plug for vim
if [ -e ~/.vim/autoload/plug.vim ]; then
  echo "vim-plug is already installed for vim"
else
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  vim +PlugInstall +qall
fi
