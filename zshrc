source ~/dotfiles/shell/path.sh
source ~/dotfiles/shell/completions.sh
source ~/dotfiles/shell/prompt.sh
source ~/dotfiles/shell/aliases.sh
source ~/dotfiles/shell/funcs.sh

# @TODO - how does GPG transfer between machines?
export GPG_TTY=$(tty)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
