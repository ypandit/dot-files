
# Super user
alias _='sudo'

# Show history
alias hist='fc -l 1'

# Navigation
alias ..="cd .."
alias c="cd"

# Shortcuts
alias db="cd ~/Documents/Dropbox"
alias pj="cd ~/Projects"
alias dicty="cd ~/Projects/dictyBase"
alias v="vim"
alias q="exit"
alias vm="cd ~/Documents/VMs"

# Untar
alias untar="tar xzfv"

# List files
alias l="ls -Ga"
alias ll="ls -la"

# List directories
alias dir='ls -l | grep "^d"'

# Updates
alias update='brew update; brew upgrade; upgrade_oh_my_zsh; pythonbrew update'
alias macupdate='_ softwareupdate -i -a'

# Cleanup
alias cleanup='brew cleanup; rm -rf ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl'

# Remove .DS_Store files
alias remove_ds_store="find . -type f -name '*.DS_Store' -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""

# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

