#!/bin/bash
# set -e

TOTAL_LINES=`cat ~/.bashrc | wc -l`
BEGIN_LINE=`grep -n -e '### GGA_START' ~/.bashrc | cut -d : -f 1`
END_LINE=`grep -n -e '### GGA_END' ~/.bashrc | cut -d : -f 1`
TAIL_LINES=$(($TOTAL_LINES-$END_LINE + 1))
D_VIOL='\033[1;34m' # violet
L_RED='\033[1;31m' # light red
NC='\033[0m' # no color
GIT_VERSION=`git --version | grep -o -E '[0-9]+' | head -1` # Git version detection

case $GIT_VERSION in
  1)
    ALIAS_URL='https://gogit.ru/gitalias_1X'
    echo 'You have Git 1.X. That is fine but I suggest you to upgrade it'
  ;;
  2)
    ALIAS_URL='https://gogit.ru/gitalias'
    echo 'You have Git 2.X. Nice!'
  ;;
  *)
    echo 'Can not detect Git version. Exiting'
    # rm -f ${0##*/}
    exit 0;
  ;;
esac

# Can't find both GGA markers
if [[ ! $BEGIN_LINE ]] && [[ ! $END_LINE ]]
then
  echo -e "${D_VIOL}Can't find GGA markers like: '### GGA_START' и '### GGA_END'. Either it is fresh installation or both markers are broken. I guess you want me to install new GGA block in the end of your ~/.bashrc${NC}";
  echo "Making backup of your '~/.bashrc' in ~/.bashrc.backup";
  cp ~/.bashrc ~/.bashrc.backup
  echo '### GGA_START'>> ~/.bashrc
  curl -L -s ${ALIAS_URL} >> ~/.bashrc
  echo '### GGA_END'>> ~/.bashrc
  echo 'Sourcing myself';
  source ~/.bashrc;
  # echo 'Self-terminating'
  # rm -f ${0##*/}
  exit 0;
fi

# One of markers is broken
if [[ ! $BEGIN_LINE ]] || [[ ! $END_LINE ]]
then
  echo -e "${D_VIOL}It looks like one of two GGA markers is broken. Hmm.. I guess you'll need to fix it yourself.\n You must check that ${L_RED}### GGA_START${NC} is placed in the beginning and ${L_RED}### GGA_END${NC}  in the end of Go Git Aliases block.\n${NC}";
  # rm -f ${0##*/}
  exit 0;
fi

# Allright, found both markers
if [[ $BEGIN_LINE ]] && [[ $END_LINE ]]
then
  echo -e "${D_VIOL}Found Go Git Aliases block. Updating...${NC}";
  echo "Making backup of your '~/.bashrc' in ~/.bashrc.backup";
  cp ~/.bashrc ~/.bashrc.backup
  echo 'Updating aliases'
  head -n $BEGIN_LINE ~/.bashrc.backup > ~/.bashrc
  curl -L -s ${ALIAS_URL} >> ~/.bashrc
  tail -n $TAIL_LINES ~/.bashrc.backup >> ~/.bashrc
  echo 'Sourcing myself';
  source ~/.bashrc;
  # echo 'Self-terminating'
  # rm -f ${0##*/}
  exit 0;
fi
