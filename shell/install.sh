echo "Linking zshrc..."
ln -sfv ~/dotfiles/zshrc ~/.zshrc

echo "Changing shell..."
chsh -s /bin/zsh
