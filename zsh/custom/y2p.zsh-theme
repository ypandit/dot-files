
local current_dir='$fg[yellow]%~%b%{$reset_color%}'

# perl|ruby|python|git prompt info
local rvm_ruby='$fg[red]$(rbenv_prompt_info)%{$reset_color%}'
local pyb_prompt='$fg[green]$(pyenv_prompt_info)%{$reset_color%}'
local plb_prompt='$fg[blue]$(plenv_prompt_info)%{$reset_color%}'
local git_prompt='$(git_time_since_commit)$(git_info)'
# local go_prompt='$fg[yellow]$(gvm_info)%{$reset_color%}'

local user='$fg[red]%n%{$reset_color%}'
local host='$fg[blue]%m%{$reset_color%}'

# The Prompt
PROMPT="╭─ ${user} $fg_bold[white]@%{$reset_color%} ${host} $fg_bold[white]in%{$reset_color%} ${current_dir} ${git_prompt} ${plb_prompt}${pyb_prompt}${rvm_ruby}$reset_color
╰ $fg[white]⌘ %{$reset_color%} "

# Git coloring
ZSH_THEME_GIT_PROMPT_PREFIX="$fg[cyan]±"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ?%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[blue]%} ✚%{$reset_color%}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT="%{$fg[magenta]%}"

# 
function plenv_prompt_info() {
  	local perl_version
	if [ -f ".perl-version" ]; then
    	perl_version=$(plenv version 2> /dev/null) || return
		if [ -d "local" ]; then
			echo "[pl-$perl_version" | sed 's/[ \t].*$/@local]/'
		else
			echo "[pl-$perl_version" | sed 's/[ \t].*$/]/'
		fi
	else
		perl_version=""
	fi
}

#
function rbenv_prompt_info() {
  	local ruby_version
	local gemset
	if [ -f ".ruby-version" ]; then
   		ruby_version=$(rbenv version 2> /dev/null) || return
		echo "[rb-$ruby_version" | sed 's/[ \t].*$/]/'
	else
		ruby_version=""
	fi
}

# Display Go-lang 
function gvm_info() {
	GVM=$(gvm-prompt 2> /dev/null) || return
	if [[ -n $GVM ]]; then
		echo "[$GVM]"
	else
		echo ""
	fi
}

# pyenv info, if .python-version file exists
function pyenv_prompt_info() {
  	local py_version
	if [ -f ".python-version" ]; then
    	py_version=$(pyenv version 2> /dev/null) || return
		echo "[py-$py_version" | sed 's/[ \t].*$/]/'
	else 
		py_version=""
	fi
}

# Get git prompt information
function git_info() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        if [[ -z $(git_prompt_info) ]]; then
            echo "%{$fg[magenta]%}detached-head%{$reset_color%})"
        else
            echo "$(git_prompt_info)"
        fi
    fi
}

# Determine the time since last commit
function git_time_since_commit() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        # Only proceed if there is actually a commit.
        if [[ $(git log 2>&1 > /dev/null | grep -c "^fatal: bad default revision") == 0 ]]; then
            # Get the last commit.
            last_commit=`git log --pretty=format:'%at' -1 2> /dev/null`
            now=`date +%s`
            seconds_since_last_commit=$((now-last_commit))

            # Totals
            MINUTES=$((seconds_since_last_commit / 60))
            HOURS=$((seconds_since_last_commit/3600))
           
            # Sub-hours and sub-minutes
            DAYS=$((seconds_since_last_commit / 86400))
            SUB_HOURS=$((HOURS % 24))
            SUB_MINUTES=$((MINUTES % 60))
            
            if [[ -n $(git status -s 2> /dev/null) ]]; then
                if [ "$MINUTES" -gt 30 ]; then
                    COLOR="$ZSH_THEME_GIT_TIME_SINCE_COMMIT"
                elif [ "$MINUTES" -gt 10 ]; then
                    COLOR="$ZSH_THEME_GIT_TIME_SINCE_COMMIT"
                else
                    COLOR="$ZSH_THEME_GIT_TIME_SINCE_COMMIT"
                fi
            else
                COLOR="$ZSH_THEME_GIT_TIME_SINCE_COMMIT"
            fi

            if [ "$HOURS" -gt 24 ]; then
                echo "($COLOR${DAYS}d${SUB_HOURS}h${SUB_MINUTES}m%{$reset_color%}|"
            elif [ "$MINUTES" -gt 60 ]; then
                echo "($COLOR${HOURS}h${SUB_MINUTES}m%{$reset_color%}|"
            else
                echo "($COLOR${MINUTES}m%{$reset_color%}|"
            fi
        else
            COLOR="$ZSH_THEME_GIT_TIME_SINCE_COMMIT"
            echo "($COLOR~|"
        fi
    fi
}
