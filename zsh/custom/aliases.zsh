
# Show history
alias hist='fc -l 1'

# Navigation
alias ..="cd .."
alias c="cd"

# Folder shortcuts
alias db="cd ~/Documents/Dropbox"
alias pj="cd ~/Projects"
alias dicty="cd ~/Projects/dictyBase"
alias vm="cd ~/Projects/VMs"
alias h="cd ~/"

# Developer tools' aliases
alias v="vim"
alias q="exit"

# Internet Protocol Addresses
alias localip='ipconfig getifaddr en1'
alias ips="ifconfig -a | grep -o 'inet6\? \([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)' | sed -e 's/inet6* //'"

# List files
alias l="ls -Ga"
alias ll="ls -lha"
# List directories
alias dir='ls -l | grep "^d"'

# Cleanup
alias cleanup='brew cleanup; rm -rf ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl'

# Remove .DS_Store files
alias remove_ds_store="find . -type f -name '*.DS_Store' -ls -delete; find . -type f -name '.directory' -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""
