#!/usr/bin/env bash
# Laravel aliases
# https://github.com/michaelradionov/aliases

alias pa='php artisan'
alias pu='./vendor/bin/phpunit --testdox'
alias mfs='php artisan migrate:fresh --seed'

alias dewpa='docker-compose exec workspace php artisan'
alias dewmfs='docker-compose exec workspace php artisan migrate:fresh --seed'

# http://calebporzio.com/bash-alias-composer-link-use-local-folders-as-composer-dependancies/
composer-link() {
    composer config repositories.local '{"type": "path", "url": "'$1'"}' --file composer.json
}
