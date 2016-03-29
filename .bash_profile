#===============================================#
# general setup 
set show-all-if-ambiguous on   
set completion-ignore-case on 

# I declare WORK_HOME in .bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# export WORK_HOME={whatever dir my project is in goes here}
alias curr="cd ~/Work/$WORK_HOME"

# misc aliases 
alias ll="ls -GlhA"
alias vim="gvim"
alias cake="echo $'\360\237\215\260'"

#===============================================#
# ruby: .rbenv environment stuff 
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# python: 
export PIP_REQUIRE_VIRTUALENV=true
export WORKON_HOME=$HOME/.virtualenvs

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

# android: set android studio sdk location
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="$PATH:$ANDROID_HOME/tools"

#===============================================#
# stuff I'm not using lately

# set -o vi                                       # vi commands
# export CLICOLOR=1                               # allow color
# export LSCOLORS=ahfxcxdxAxexgxCxDhchbh          # BSD colors for file types
# export PS1="\u@\H/\W$ "                         # custom prompt

#===============================================#
