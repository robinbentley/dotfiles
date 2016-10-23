# create necessary dirs
mkdir -p ~/.vim/swap
mkdir -p ~/.config/nvim

# link vimrc
ln -sfv ~/dotfiles/vim/vimrc ~/.vimrc
ln -sfv ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim

# install vim-plug for vim
if [ -e ~/.vim/autoload/plug.vim ]; then
  echo "vim-plug is already installed for vim"
else
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  vim +PlugInstall +qall
fi

# install vim-plug for neovim
if [ -e ~/.config/nvim/autoload/plug.vim ]; then
  echo "vim-plug is already installed for neovim"
else
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  nvim -c PlugInstall -c quitall
fi
