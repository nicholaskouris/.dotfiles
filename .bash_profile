#===============================================#

set -o vi                                       #vi commands
set show-all-if-ambiguous on                    #
set completion-ignore-case on                   #


#===============================================#

alias ls='ls -Ghp'                              #
alias ip='curl -w "\n" http://ipecho.net/plain' #
alias ..='cd ..'                                #

#===============================================#

export PS1="\u@\H/\W$ "                         #custom prompt
export CLICOLOR=1                               #
export LSCOLORS=ahfxcxdxAxexgxCxDhchbh          #BSD file colors
export PATH=/usr/local/bin:$PATH                # homebrew
