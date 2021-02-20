#!/usr/bin/env bash
# Laravel aliases
# https://github.com/michaelradionov/aliases

alias pa='php artisan'
alias pu='./vendor/bin/phpunit --testdox'
alias mfs='php artisan migrate:fresh --seed'

alias dpa='docker-compose exec app php artisan'
alias dpu='docker-compose exec app ./vendor/bin/phpunit --testdox'
alias dmfs='docker-compose exec app php artisan migrate:fresh --seed'


# http://calebporzio.com/bash-alias-composer-link-use-local-folders-as-composer-dependancies/
composer-link() {
    composer config repositories.local '{"type": "path", "url": "'$1'"}' --file composer.json
}
