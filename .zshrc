# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

#alias loadnvm='source $(brew --prefix nvm)/nvm.sh'

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"
#source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
alias v='nvim'
alias c='clear'
alias cat='bat'

p() {
    cd $HOME/Documents/Programming/$1
}
