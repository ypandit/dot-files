# Bash's complete command in Zsh
if [[ -n $ZSH_VERSION ]]; then
	autoload -U compinit
	compinit
	autoload -U +X bashcompinit && bashcompinit
fi
