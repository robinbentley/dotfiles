source ~/dotfiles/shell/path.sh
source ~/dotfiles/shell/completions.sh
source ~/dotfiles/shell/prompt.sh
source ~/dotfiles/shell/aliases.sh
source ~/dotfiles/shell/funcs.sh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/robin/Code/serverless/catfacts/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/robin/Code/serverless/catfacts/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/robin/Code/serverless/catfacts/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/robin/Code/serverless/catfacts/node_modules/tabtab/.completions/sls.zsh

# @TODO - how does GPG transfer between machines?
export GPG_TTY=$(tty)

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/robin/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/robin/.nvm/versions/node/v10.16.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh