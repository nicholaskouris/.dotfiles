#=======General=Setup============================#
set show-all-if-ambiguous on
set completion-ignore-case on
set histappend

export HISTFILESIZE=50000
export HISTSIZE=15000

# bash && git completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include":wa


#======aliases====================================#

# requires coreutils (brew install coreutils)
alias ll='gls -GlhA --time-style=+"%Y-%m-%d %H:%M:%S"'

# open files in MacVim (on macOS)
if hash gvim 2>/dev/null; then
	alias vim="gvim"
fi

# cake
alias cake="echo $'\360\237\215\260'"

#======Node.js===================================#

export PATH="/usr/local/opt/node@10/bin:$PATH"

#======Python====================================#
# virtualenv
 export PIP_REQUIRE_VIRTUALENV=true
# export WORKON_HOME=$HOME/.virtualenvs

# if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
#     source /usr/local/bin/virtualenvwrapper.sh;
# fi

# # pyenv
# export PYENV_ROOT=/usr/local/var/pyenv
# if which pyenv > /dev/null; then
#     eval "$(pyenv init -)";
# fi

#======Android===================================#

## android: set android studio sdk location
# export ANDROID_HOME=$HOME/Library/Android/sdk
#export PATH="$PATH:$ANDROID_HOME/tools"

#=====Bash=Prompt================================#

# http://ezprompt.net

# get current branch in git repo
function parse_git_branch() {
	BRANCH=$(git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
	if [ ! "${BRANCH}" == "" ]; then
		STAT=$(parse_git_dirty)
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty() {
	status=$(git status 2>&1 | tee)
	dirty=$(
		echo -n "${status}" 2>/dev/null | grep "modified:" &>/dev/null
		echo "$?"
	)
	untracked=$(
		echo -n "${status}" 2>/dev/null | grep "Untracked files" &>/dev/null
		echo "$?"
	)
	ahead=$(
		echo -n "${status}" 2>/dev/null | grep "Your branch is ahead of" &>/dev/null
		echo "$?"
	)
	newfile=$(
		echo -n "${status}" 2>/dev/null | grep "new file:" &>/dev/null
		echo "$?"
	)
	renamed=$(
		echo -n "${status}" 2>/dev/null | grep "renamed:" &>/dev/null
		echo "$?"
	)
	deleted=$(
		echo -n "${status}" 2>/dev/null | grep "deleted:" &>/dev/null
		echo "$?"
	)
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

export PS1="\h:\W\`parse_git_branch\` \u\\$ "

#================================================#

alias dc=docker-compose

dc-recompile() {
	for service in "$@"; do
		docker-compose stop "$service"
	done
	docker container prune -f
	docker volume prune -f
	dc up -d
}

#======git=======================================#

alias gg='git log --oneline --graph --all --decorate'
