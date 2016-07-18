#=======General=Setup============================#
set show-all-if-ambiguous on   
set completion-ignore-case on 

# I declare WORK_HOME in .bashrc
if [ -f ~/.bashrc ]; then source ~/.bashrc; fi

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion; fi

# misc aliases 
alias ll="ls -GlhA"
if hash gvim 2>/dev/null; then alias vim="gvim"; fi
alias cake="echo $'\360\237\215\260'"

# some work specific aliases
alias curr="cd ~/Work/$WORK_HOME && ls -GlhA"
alias mdown="cd ~/Work/markdowns && ls -GlhA"

#======Ruby======================================#
# ruby: .rbenv environment stuff 
if [ -f ~/.rbenv ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"; fi

#======Python====================================#
# virtualenv
export PIP_REQUIRE_VIRTUALENV=true
export WORKON_HOME=$HOME/.virtualenvs

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh; fi

#pyenv
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

#======Android===================================#
# android: set android studio sdk location
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="$PATH:$ANDROID_HOME/tools"

#================================================#
# export LSCOLORS=ahfxcxdxAxexgxCxDhchbh          # BSD colors for file types
# export PS1="\u@\H/\W$ "                         # custom prompt

#================================================#
