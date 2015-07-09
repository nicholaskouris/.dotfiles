#===============================================#
# general setup 
set show-all-if-ambiguous on   
set completion-ignore-case on 

# set -o vi                                       # vi commands
# export CLICOLOR=1                               # allow color
# export LSCOLORS=ahfxcxdxAxexgxCxDhchbh          # BSD colors for file types
# export PS1="\u@\H/\W$ "                         # custom prompt

#===============================================#
# ruby environment stuff 
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# prevent pip from installing dependencies outside if virtualenv
export PIP_REQUIRE_VIRTUALENV=true

#===============================================#
# aliases 
alias ll="ls -GlhA"
alias curr="cd ~/Work/blackbird-qa/ && ls -GlhA"
