# Go Git aliases

Bash script to install and update handy set of aliases for Git. I call it Go Git Aliases (GGA). 

Installation:
```
curl -L https://gogit.ru/alias | bash
```
Then restart your terminal or execute this:
```
. ~/.bashrc
```
If you want to redefine some of this aliases, just add yours lower then `### GGA_END`.

# Features

- Only wrapped in `### GGA_START` and `### GGA_END` chunk of your `.bashrc` updating. It wont broke anything
- It always backuping your old `.bashrc`
- It detects Git version and downgrade to 1.X compatible commands
- It's just very small and simple to understand
