#!/usr/bin/env bash
# Git Aliases
# https://github.com/michaelradionov/aliases
#

alias gs='git status'
alias gl='git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(auto)%d %C(green)%s" --date=short --graph --all' # красивый гит лог ВСЕХ веток. (auto) НЕ РАБОТАЕТ на git 1.X (старее 2 версии), заменить на цвет, например, (red)
alias gl1='git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(auto)%d %C(green)%s" --date=short --graph' # красивый гит лог ТЕКУЩЕЙ ветки. (auto) НЕ РАБОТАЕТ на git 1.X (старее 2 версии), заменить на цвет, например, (red)
alias go='git checkout' # сменить ветку, чекаутнуться на коммит (для просмотра). go -b branch создаст ветку branch и перейдет на нее
alias gc='git commit -m' # закоммитить все что в индексе. После этой команды пишем в кавычках текст коммита
alias gca='git commit -a -m' # закоммитить все измененное, кроме untracked. После этой команды пишем в кавычках текст коммита
alias gd='git diff -w' # ПОЛЕЗНАЯ команда. дифф только измененного кода. не покажет изменения прав файлов, пустых строк, отступов.
alias gm='git merge -Xignore-all-space --no-edit' # мердж, который не создаст конфликтов из-за отступов, пустых строк и тд. НЕ РАБОТАЕТ на git 1.X
alias gr='git rebase' # ребейз
alias grh='git reset --hard' # стереть все изменения в WD и индексе. не трогает untracked
alias gf='git fetch'
alias grh1='git reset --hard HEAD~1' # стереть все изменения в WD и индексе + стереть текущий коммит. удобно, когда надо просто стереть последний коммит
alias gss='git show --stat --pretty=fuller' # удобно посмотреть что в коммите. если не передавать ей хеш коммита, покажет что есть в текущем коммите
alias gh1='go HEAD~1' # глянуть предыдущий коммит
alias ga='git add -v' # подробный git add (с выводом отчета)
alias gt='git tag --sort version:refname' # Корректный вывод тегов
alias gcp='git cherry-pick'
alias cherrybeast='function _cherrybeast(){ git cherry-pick $(git log --pretty=format:"%h" --grep="$1"  --all --reverse) -Xtheirs; };_cherrybeast'
alias revertbeast='function _revertbeast(){ git revert $(git log --pretty=format:"%h" --grep="$1") -Xtheirs --no-edit; };_cherrybeast'
alias back='git reset --hard HEAD@{1}'
alias gbc='git branch -a --contains '
