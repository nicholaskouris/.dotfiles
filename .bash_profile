set -o vi                                       #vi commands
set show-all-if-ambiguous on                    #
set completion-ignore-case on                   #

#===============================================#

alias ls='ls -Ghp'                              #
alias ip='curl -w "\n" http://ipecho.net/plain' #
alias ..='cd ..'                                #

#===============================================#

export PS1="\u@\H/\W$ "                         #custom prompt
export CLICOLOR=1                               #allow color
export LSCOLORS=ahfxcxdxAxexgxCxDhchbh          #BSD colors for file types
export PATH=/usr/local/bin:$PATH                #include homebrew at start of $PATH
