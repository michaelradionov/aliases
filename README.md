# git-alias

## Useful Git aliases


# UPD jan-2018
- For convinience, you can use shorter command
```
curl -L https://flagstudio.ru/gitalias >> ~/.bashrc && . ~/.bashrc
```


### Mac OS and Linux

For Mac, Linux or other UNIX OS you can just add the code in your `~/.bashrc` или `/etc/bashrc` as is and reopen terminal window.
In fact, the easiest way to do this is:
1. run `curl https://raw.githubusercontent.com/studioflag/git-alias/master/.bashrc >> ~/.bashrc`. This should add aliases in .bashrc file in your users folder.
2. Then run `. ~/.bashrc`. This sources (applies) your .bashrc in current terminal window, so you don't need to reopen.

### Windows

For Windows Cmder app (console emulator based on ConEmu) add entries in `\config\aliases` written like `alias gs=git status $*`. That means you need to remove the quotation marks and add `$*` in the end of every entry.
For other windows apps and other OS you should just put .bashrc file from this repo somewhere on you machine and tell your app to run it every time it starts.

## Полезные алиасы для Git

- Для Mac и Linux добавьте записи в `~/.bashrc` или `/etc/bashrc` как есть. Фактически, вы можете просто выполнить `curl https://raw.githubusercontent.com/studioflag/git-alias/master/.bashrc >> ~/.bashrc`, чтобы добавить алиасы в конец вашего .bashrc в папке пользователя.
- Для Windows Сmder (эмулятор терминала на базе ConEmu) добавьте записи в `\config\aliases` в виде `alias gs=git status $*`
- Для других программ на Windows и других ОС поместите алиасы в shell файл, который выполняется при запуске терминала (консоли).
