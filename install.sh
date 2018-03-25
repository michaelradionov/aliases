#!/bin/bash
set -e

TOTAL_LINES=`cat ~/.bashrc | wc -l`
BEGIN_LINE=`grep -n -e '### GGA_START' ~/.bashrc | cut -d : -f 1`
END_LINE=`grep -n -e '### GGA_END' ~/.bashrc | cut -d : -f 1`
TAIL_LINES=$(($TOTAL_LINES-$END_LINE + 1))
D_VIOL='\033[1;34m' # фиолетовый
NC='\033[0m' # нет цвета

echo 'Скрипт Go Git Aliases. Первая версия. Git 1.X НЕ ПОДДЕРЖИВАЕТСЯ';

# Не могу найти блок GGA
if [[ ! $BEGIN_LINE ]] && [[ ! $END_LINE ]]
then
  # read -p 'Не нашел маркеры Go Git Aliases: "### GGA_START" и "### GGA_END". Либо блока еще нет, либо сломаны оба маркера. Создадим новый блок с алиасами для Git? (y/n) ' x
  # case $x in
  #   y)
      echo -e "${D_VIOL}Не нашел маркеры Go Git Aliases: '### GGA_START' и '### GGA_END'. Либо блока еще нет, либо сломаны оба маркера. Добавляю новый блок Go Git Алиасов в конец вашего ~/.bashrc...${NC}";
      echo '### GGA_START'>> ~/.bashrc
      curl -L https://gogit.ru/gitalias >> ~/.bashrc
      echo '### GGA_END'>> ~/.bashrc
      . ~/.bashrc

      echo 'Самоудаляюсь'
      rm -f ${0##*/}
      exit 0;
  #   ;;
  #   *)
  #     echo 'Ничего не делаю. Самоудаляюсь';
  #     rm -f ${0##*/}
  #     exit 0;
  #   ;;
  # esac
fi

# Видимо, один из маркеров сломан
if [[ ! $BEGIN_LINE ]] || [[ ! $END_LINE ]]
then
  echo -e "${D_VIOL}Похоже, что один из маркеров GGA сломан. Вам придется это починить самостоятельно. \nДолжно быть '### GGA_START' в начале и '### GGA_END' в конце. Самоудаляюсь.${NC}";
  rm -f ${0##*/}
  exit 0;
fi

# Маркеры нашлись, все ОК
if [[ $BEGIN_LINE ]] && [[ $END_LINE ]]
then
  # read -p 'Нашел блок Go Git Алиасов. Обновить? (y/n)' x
  # case $x in
  #   y)
      echo -e "${D_VIOL}Нашел блок Go Git Алиасов. Обновляю${NC}";
      # Заменяем блок
      echo 'Делаю бекап файла ~/.bashrc в ~/.bashrc.backup';
      cp ~/.bashrc ~/.bashrc.backup
      echo 'Обновляю список алиасов'
      head -n $BEGIN_LINE ~/.bashrc.backup > ~/.bashrc
      curl -L https://gogit.ru/gitalias >> ~/.bashrc
      tail -n $TAIL_LINES ~/.bashrc.backup >> ~/.bashrc
      . ~/.bashrc
      echo 'Самоудаляюсь'
      rm -f ${0##*/}
      exit 0;
  #   ;;
  #   *)
  #     echo 'Ну нет так нет. Пока! Самоудаляюсь'
  #     rm -f ${0##*/}
  #     exit 0;
  #   ;;
  # esac
fi
