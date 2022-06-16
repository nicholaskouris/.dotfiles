# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="maran"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [ -f ~/.zprofile ]; then
  source ~/.zprofile
fi

if ! [[ ":$PATH:" == *":/usr/local/opt/node@10/bin:"* ]]; then
  export PATH="/usr/local/opt/node@10/bin:$PATH"
fi

if ! [[ ":$PATH:" == *":/usr/local/opt/python@3.8/bin:"* ]]; then
  export PATH="/usr/local/opt/python@3.8/bin:$PATH"
fi

if ! [[ ":$PATH:" == *":/usr/local/opt/python@3.9/bin:"* ]]; then
  export PATH="/usr/local/opt/python@3.9/bin:$PATH"
fi

if ! [[ ":$PATH:" == *":/usr/local/opt/openjdk@11/bin:"* ]]; then
  export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
fi

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY_TIME
setopt HIST_REDUCE_BLANKS 
setopt HIST_IGNORE_ALL_DUPS

export HISTSIZE=100000
export HISTFILESIZE=9999999

alias gg='git log --oneline --graph --all --decorate'
alias dc='docker-compose'
alias ip='curl ipinfo.io'
alias timestamp='date -u +"%Y-%m-%dT%H:%M:%SZ"'
alias hh='history -i'
alias path="echo $PATH | tr ':' '\n'"
alias docker_restart='killall Docker && open /Applications/Docker.app'

az-token() {
  if ! command -v jq &>/dev/null; then
    echo "jq not installed"
  else
    az account get-access-token --resource-type oss-rdbms | jq -r '.accessToken' | pbcopy &&
      echo "access token copied to clipboard"
  fi
}

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

term-shortcuts() {
  printf '%-20s' 'control + A'
  printf '\033[1;34m%s\033[0m\n' 'move to the beginning of line'
  printf '%-20s' 'control + E'
  printf '\033[1;34m%s\033[0m\n' 'move to the end of line'
  printf '%-20s' 'option (alt) + F'
  printf '\033[1;34m%s\033[0m\n' 'move forward a word'
  printf '%-20s' 'option (alt) + B'
  printf '\033[1;34m%s\033[0m\n' 'move backward a word'
  printf '%-20s' 'control + U'
  printf '\033[1;34m%s\033[0m\n' 'cut the line before the cursor'
  printf '%-20s' 'control + K'
  printf '\033[1;34m%s\033[0m\n' 'cut line after the cursor'
  printf '%-20s' 'control + W'
  printf '\033[1;34m%s\033[0m\n' 'cut the word before the cursor'
  printf '%-20s' 'option (alt) + D'
  printf '\033[1;34m%s\033[0m\n' 'cut the word after the cursor'
  printf '%-20s' 'control + Y'
  printf '\033[1;34m%s\033[0m\n' 'paste from buffer'
  printf '%-20s' 'esc + T'
  printf '\033[1;34m%s\033[0m\n' 'transpose the two words before the cursor'
  printf '%-20s' 'control + R'
  printf '\033[1;34m%s\033[0m\n' 'search history'
}

dc-recompile() {
  if [ -z "$1" ]; then
    echo "Please add the services you wish to recompile"
  else
    for service in "$@"; do
      docker-compose stop "$service"
    done
    docker container prune -f
    docker volume prune -f
    dc up -d
  fi
}
