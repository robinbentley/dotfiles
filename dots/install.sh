echo "Linking dots...."

ln -sfv ~/dotfiles/dots/hushlogin ~/.hushlogin
ln -sfv ~/dotfiles/dots/gitconfig ~/.gitconfig
ln -sfv ~/dotfiles/dots/gemrc ~/.gemrc

mkdir ~/.config/htop/
ln -sfv ~/dotfiles/dots/htoprc ~/.config/htop/htoprc

mkdir ~/.config/neofetch/
ln -sfv ~/dotfiles/dots/neofetchrc ~/.config/neofetch/neofetchrc
