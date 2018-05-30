export ZSH=~/.oh-my-zsh

ZSH_THEME="gnzh"
DEFAULT_USER=$(whoami)

plugins=(colored-man-pages colorize cp git tmux)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
