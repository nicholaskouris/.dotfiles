#=======General=Setup============================#
set show-all-if-ambiguous on   
set completion-ignore-case on 
set histappend

export HISTFILESIZE=10000
export HISTSIZE=5000

if [ -f ~/.bashrc ]; then
    source ~/.bashrc;
fi

# bash completion
source /usr/local/git/contrib/completion/git-completion.bash

#======aliases====================================#

# requires coreutils (brew install coreutils)
alias ll='gls -GlhA --time-style=+"%Y-%m-%d %H:%M:%S"'

# open files in MacVim (on macOS)
if hash gvim 2>/dev/null; then
    alias vim="gvim";
fi

# cake
alias cake="echo $'\360\237\215\260'"

#======Node.js===================================#


#======Python====================================#
# virtualenv
export PIP_REQUIRE_VIRTUALENV=true
export WORKON_HOME=$HOME/.virtualenvs

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh;
fi

# pyenv
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then 
    eval "$(pyenv init -)";
fi

#======Android===================================#

# android: set android studio sdk location
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="$PATH:$ANDROID_HOME/tools"

#================================================#

# export LSCOLORS=ahfxcxdxAxexgxCxDhchbh          # BSD colors for file types
# export PS1="\u@\H/\W$ "                         # custom prompt

#================================================#

alias dc=docker-compose

dc-recompile() {
  for service in "$@"
  do
    docker-compose stop "$service"
  done
  docker container prune -f
  docker volume prune -f
  dc up -d
}
