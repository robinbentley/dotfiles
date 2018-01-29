source ~/dotfiles/shell/path.sh
source ~/dotfiles/shell/completions.sh
source ~/dotfiles/shell/prompt.sh
source ~/dotfiles/shell/aliases.sh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/robin/Code/serverless/catfacts/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/robin/Code/serverless/catfacts/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/robin/Code/serverless/catfacts/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/robin/Code/serverless/catfacts/node_modules/tabtab/.completions/sls.zsh