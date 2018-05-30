export ZSH=~/.oh-my-zsh

ZSH_THEME="awesomepanda"
DEFAULT_USER=$(whoami)

plugins=(git)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
