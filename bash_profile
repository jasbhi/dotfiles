export PATH=$PATH:~/bin
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

source ~/.bashrc
