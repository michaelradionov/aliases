![gl](https://downloader.disk.yandex.ru/preview/ff8941bba54a0a078ce4812664f9360c0de9ca526d2c575269a928be03807253/5b488a3d/fKqInKw3d7bLFOeFnMGnhBhmK_AVKNp4Ci4TT7Lecj8YBhTQseQsSv8hyqaEqd2AByZpoLrxCAR2a4d5VG7IyEKqbcKenrMjtOOeOUVrtM6r8npumZHI4midPdWhecNq?uid=0&filename=2018-07-13_12-16-27.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&tknv=v2&size=2048x2048)

# Go Git aliases

Bash script to install and update handy set of aliases for Git. I call it Go Git Aliases (GGA).

Installation:
```
. <(curl -L https://gogit.ru/alias)
```
If you want to redefine some of these aliases, just add yours lower then `### GGA_END`.

# Features

- Only wrapped in `### GGA_START` and `### GGA_END` chunk of your `.bashrc` updating. It wont broke anything
- It always backuping your old `.bashrc`
- It detects Git version and downgrade to 1.X compatible commands
- It's just very small and simple to understand
