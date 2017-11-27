mkdir -p ~/Library/Application\ Support/Code/User
ln -sfv $(pwd)/vscode/*.json ~/Library/Application\ Support/Code/User

# macOS doesn't seem to like the `-n` flag for symlinking dirs
# in the case there is an existing snippets dir remove it before linking
rm -r ~/Library/Application\ Support/Code/User/snippets
ln -sfv $(pwd)/vscode/snippets/ ~/Library/Application\ Support/Code/User
