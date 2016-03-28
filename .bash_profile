#===============================================#
# general setup 
set show-all-if-ambiguous on   
set completion-ignore-case on 

#===============================================#
# ruby: .rbenv environment stuff 
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# python: prevent pip from installing dependencies outside if virtualenv
export PIP_REQUIRE_VIRTUALENV=true

# python: more virtualenv
export WORKON_HOME=$HOME/.virtualenvs

if [ -f /usr/local/bin/virtualenvwrapper.sh ]
  then
    source /usr/local/bin/virtualenvwrapper.sh
fi

# android: set android studio sdk location
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:"$ANDROID_HOME"

#===============================================#
# aliases 
alias ll="ls -GlhA"
alias curr="cd ~/Work/blackbird-qa/ && ls -GlhA"
alias vim='gvim'
alias cake="echo $'\360\237\215\260'"

#===============================================#
# set -o vi                                       # vi commands
# export CLICOLOR=1                               # allow color
# export LSCOLORS=ahfxcxdxAxexgxCxDhchbh          # BSD colors for file types
# export PS1="\u@\H/\W$ "                         # custom prompt

#===============================================#
