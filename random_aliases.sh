#!/usr/bin/env bash
# Random aliases
# https://github.com/michaelradionov/aliases

alias la="ls -alh" # Better ls
alias b="m ~/.bashrc" # Edit ~/.bashrc file
alias hosts="cat ~/.ssh/config" # List all your ssh hosts shortcuts
alias dudu="du --max-depth=1 -h | sort -h" # check current folder disk space

alias passgen='openssl rand -base64 6' # Generate strong password
alias genpass='passgen' # I just can't remember previous alias :)

alias phpinfo='echo "<?php phpinfo(); ?>" > info.php' 

flagclone (){ git clone git@bitbucket.org:flag_studio/$1.git; }

# Linter aliases
alias pcs='php-cs-fixer fix . --path-mode=intersection'
alias pcsdiff='php-cs-fixer fix . --dry-run --diff --path-mode=intersection'
alias pcsdry='php-cs-fixer fix . --dry-run --verbose --path-mode=intersection'

# Adds datetime stamps to commands in history
export HISTTIMEFORMAT="%d/%m/%y %T " 
