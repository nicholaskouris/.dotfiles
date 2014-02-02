set -o vi                                       #vi commands
set show-all-if-ambiguous on                    #
set completion-ignore-case on                   #
alias ls='ls -Gh'                               #
export PS1="\\T \u\[\033[m\]/\W$ "              #custom prompt
export CLICOLOR=1                               #
export LSCOLORS=ahfxcxdxAxexgxCxDhchbh          #BSD file colors
export PATH=/usr/local/bin:$PATH                # homebrew
