echo "Linking zshrc..."
ln -sfv ~/dotfiles/zshrc ~/.zshrc

echo "Changing shell..."
sudo chsh -s /bin/zsh
