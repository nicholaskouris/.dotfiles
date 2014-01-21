set -o vi                                       #
alias ls='ls -GFh'                              #
export PS1="\\T \u\[\033[m\]/\W$ "              #
export CLICOLOR=1                               #
export LSCOLORS=ExFxBxDxCxegedabagacad          #
set completion-ignore-case on                   #
set show-all-if-ambiguous on                    #
export PATH=/usr/local/bin:$PATH                # homebrew
