export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias so='source ~/.zshrc'
alias s='cd ~/.local/bin'

alias zshrc='nvim ~/.zshrc'
alias vi='nvim'
alias c='cd ~/data/code/'

bindkey -s '^f' 'tmux-sessionizer\n'
alias a='tmux attach'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Flutter
export FLUTTER_INSTALL="/home/p/.flutter"
export PATH="$FLUTTER_INSTALL/bin:$PATH"

# JDK
export JDK_INSTALL="/usr/local/android-studio/jbr"
export PATH="$JDK_INSTALL/bin:$PATH"

# Emulator
export EMULATOR_INSTALL="/home/p/Android/Sdk/emulator"
export PATH="$EMULATOR_INSTALL:$PATH"

eval $(thefuck --alias)
alias dot='/usr/bin/git --git-dir=/home/p/.dot/ --work-tree=/home/p'
