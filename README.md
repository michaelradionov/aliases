![gl](https://downloader.disk.yandex.ru/preview/d386ffc9f2d68ec9597345b623d3ccad901f113b11e3099d5df416e51845d8ae/inf/fKqInKw3d7bLFOeFnMGnhH_qWadsfvJkfnR4QJrJTpN-hd-bWduFG8V1dYdrappUPH-e7y21XNR_LHqranyoo43Wb2oAeLzb54Dkzlr1r0qr8npumZHI4midPdWhecNq?uid=0&filename=2018-03-25_19-23-32.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&tknv=v2&size=2048x2048)

# Go Git aliases

Bash script to install and update handy set of aliases for Git. I call it Go Git Aliases (GGA).

Installation:
```
source <(curl -L https://gogit.ru/alias)
```
If you want to redefine some of this aliases, just add yours lower then `### GGA_END`.

# Features

- Only wrapped in `### GGA_START` and `### GGA_END` chunk of your `.bashrc` updating. It wont broke anything
- It always backuping your old `.bashrc`
- It detects Git version and downgrade to 1.X compatible commands
- It's just very small and simple to understand
