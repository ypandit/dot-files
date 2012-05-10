
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
#local current_dir='$fg[blue]%~%'

# perl|ruby|python prompt info
local rvm_ruby='$fg[green]$(rvm_prompt_info)%{$reset_color%}'
local pythonbrew_prompt='$fg[green]{$(pythonbrew_info)}%{$reset_color%}'
local perlbrew_prompt='$fg[green][$(perlbrew_info)]%{$reset_color%}'

local git_prompt='$(git_prompt_info)'

local user='$fg[yellow]%n%{$reset_color%}'
#local user='$fg_bold[yellow]योगेश%{$reset_color%}'

# The Prompt
# PROMPT="╭─$fg_bold[white][%t] ${user} $fg_bold[white]@ $fg_bold[red]%m:${current_dir} ${git_prompt} $(perlbrew_info) $reset_color
# ╰─%B$%b "
PROMPT="╭─$fg_bold[white][%t | %W] ${user} $fg_bold[white]@ $fg_bold[red]%m $fg_bold[white]in${current_dir} ${git_prompt} ${rvm_ruby} ${perlbrew_prompt} ${pythonbrew_prompt} $reset_color
╰─♜ "

# Git coloring
ZSH_THEME_GIT_PROMPT_PREFIX="$fg[yellow]±"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[blue]%}✚%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}✭%{$reset_color%}"

# Function for Perlbrew info
function perlbrew_info() {
    which_perlbrew=$(which perlbrew)
    if [[ "$which_perlbrew" != "perlbrew not found" ]];
    then
        PERLBREW=`perlbrew list | grep '*' | cut -b3-`
    fi
    if [[ -n $PERLBREW ]]; then
        #echo "%{$fg[green]%}$PERLBREW%{$reset_color%}"
        echo "$PERLBREW"
fi
}

# Function for Pythonbrew info
function pythonbrew_info() {
    which_pythonbrew=$(which pythonbrew)
    if [[ "$which_pythonbrew" != "pythonbrew not found" ]];
    then
        PY=`pythonbrew list | grep '*' | sed 's/ (\*)//' | cut -b3-`
    fi
    if [[ -n $PY ]]; then
        #echo "%{$fg[green]%}$PY%{$reset_color%}"
        echo "$PY"
fi
}

function virtual_env() {
	local venv_prompt
	if [[ -n $(perlbrew_set) ]]; then
		venv_prompt=${perlbrew_prompt}
	fi
}
