export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac
PS1="$LIGHT_RED${TITLEBAR}\
\u@\h:\w$GREEN\$(parse_git_branch)\
$LIGHT_GRAY> "
PS2='> '
PS4='+ '
}
proml

##shopt options##
shopt -s cdspell
shopt -s checkwinsize

## other aliass ##
alias ..='cd ..'
alias la='ls -a'
alias ls='ls --color'
alias mkdir='mkdir -p -v'


#git aliases
alias gs='git status -s'
alias gp='git pull'
alias gb='git branch'
alias gdf='git diff --word-diff'

#rails command
export PATH="$HOME/.rbenv/bin:$HOME/ruby-build/bin:$PATH"
eval "$(rbenv init -)"
if [ -f ~/.git-completion.bash ]; then
      . ~/.git-completion.bash
  fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
