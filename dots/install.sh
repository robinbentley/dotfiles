echo "Linking dots...."

ln -sfv ~/dotfiles/dots/hushlogin ~/.hushlogin
ln -sfv ~/dotfiles/dots/gitconfig ~/.gitconfig
ln -sfv ~/dotfiles/dots/gemrc ~/.gemrc
ln -sfv ~/dotfiles/dots/gitignore.global ~/.gitignore.global

mkdir -p ~/.config/htop/
ln -sfv ~/dotfiles/dots/htoprc ~/.config/htop/htoprc

mkdir -p ~/.config/neofetch/
ln -sfv ~/dotfiles/dots/neofetchrc ~/.config/neofetch/neofetchrc
