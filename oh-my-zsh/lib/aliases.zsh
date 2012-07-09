
# Super user
alias _='sudo'

# Show history
alias hist='fc -l 1'

# Navigation
alias ..="cd .."
alias c="cd"

# Folder shortcuts
alias db="cd ~/Documents/Dropbox"
alias pj="cd ~/Projects"
alias dicty="cd ~/Projects/dictyBase"
alias vm="cd ~/Documents/VMs"
alias h="cd ~/"

# Developer tools
alias v="vim"
alias q="exit"
alias pyb="pythonbrew"
alias plb="perlbrew"
alias vl='vim -u /usr/share/vim/vim73/macros/less.vim'

# Untar
alias untar="tar xzfv"

# List files
alias l="ls -Ga"
alias ll="ls -la"

# List directories
alias dir='ls -l | grep "^d"'

# Updates
alias update='brew update; brew upgrade; upgrade_oh_my_zsh; pythonbrew update; cd ~/.dot-files && git submodule foreach git pull origin master; clear; cd ~/Projects'
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

