
# Show history
alias hist='fc -l 1'

export LSCOLORS="gxfxcxdxbxegedabagacad"

# Navigation
alias ..="cd .."
alias c="cd"

# Folder shortcuts
alias db="cd $HOME/Documents/Dropbox"
alias pj="cd $HOME/Projects"
alias dicty="cd $HOME/Projects/work/dictybase"
alias sciex="cd $HOME/Projects/work/science_exchange"
alias vm="cd $HOME/Projects/vm"
alias h="cd $HOME"

# Developer tools' aliases
alias v="vim"
alias q="exit"
alias t="todo.sh -d $HOME/.todo.cfg"
alias ipython="cd $HOME/Projects/ground_zero/ipython && ipython notebook --pylab=inline"

# Internet Protocol Addresses
alias localip='ipconfig getifaddr en1'
alias ips="ifconfig -a | grep -o 'inet6\? \([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)' | sed -e 's/inet6* //'"

# List files
alias l="ls -Ga"
alias ll="ls -lha"
alias sl=ls # often screw this up
# List directories
alias dir='ls -l | grep "^d"'

# Cleanup
alias cleanup='brew cleanup; rm -rf ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl'

# Remove .DS_Store files
alias remove_ds_store="find . -type f -name '*.DS_Store' -ls -delete; find . -type f -name '.directory' -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""
