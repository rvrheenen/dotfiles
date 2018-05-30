export ZSH=~/.oh-my-zsh

if [ ! -d $ZSH ]; then
  git clone git://github.com/robbyrussell/oh-my-zsh.git $ZSH
fi

# if [ -d $ZSH ]; then
#   if [ ! -f $ZSH/custom/themes/bullet-train.zsh-theme ]; then
#     wget "https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme" -P $ZSH/custom/themes/
#     # git clone https://github.com/bhilburn/powerlevel9k.git $ZSH/custom/themes/powerlevel9k
#   fi
# fi
