#Git Aliases
alias gs='git status'
alias gl='git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(auto)%d %Creset%s" --date=short --graph --all' # красивый гит лог ВСЕХ веток. (auto) НЕ РАБОТАЕТ на git 1.X (старее 2 версии), заменить на цвет, например, (red)
alias gl1='git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(auto)%d %Creset%s" --date=short --graph' # красивый гит лог ТЕКУЩЕЙ ветки. (auto) НЕ РАБОТАЕТ на git 1.X (старее 2 версии), заменить на цвет, например, (red)
alias go='git checkout' # сменить ветку, чекаутнуться на коммит (для просмотра). go -b branch создаст ветку branch и перейдет на нее
alias gc='git commit -m' # закоммитить все что в индексе. После этой команды пишем в кавычках текст коммита
alias gca='git commit -a -m' # закоммитить все измененное, кроме untracked. После этой команды пишем в кавычках текст коммита
alias gd='git diff -w' # ПОЛЕЗНАЯ команда. дифф только измененного кода. не покажет изменения прав файлов, пустых строк, отступов.
alias gm='git merge -Xignore-all-space --no-edit' # мердж, который не создаст конфликтов из-за отступов, пустых строк и тд. НЕ РАБОТАЕТ на git 1.X
alias grebase='rebase -Xignore-all-space --no-edit' # мердж, который не создаст конфликтов из-за отступов, пустых строк и тд. НЕ РАБОТАЕТ на git 1.X
alias grh='git reset --hard' # стереть все изменения в WD и индексе. не трогает untracked
alias gp='git push'
alias gf='git fetch'
alias grh1='git reset --hard HEAD~1' # стереть все изменения в WD и индексе + стереть текущий коммит. удобно, когда надо просто стереть последний коммит
alias gss='git show --stat ' # удобно посмотреть что в коммите. если не передавать ей хеш коммита, покажет что есть в текущем коммите
alias gh1='go HEAD~1' # глянуть предыдущий коммит
alias ga='git add -v' # подробный git add (с выводом отчета)
alias gt='git tag --sort version:refname' # Корректный вывод тегов
