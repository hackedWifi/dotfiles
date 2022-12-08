#
# ~/.bashrc
#
# If not running interactively, don't do anything
if [[ $- != *i* ]] ; then
  return
fi

if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi



NEWLINE='\n'
RED='\[\033[0;31m\]'
GREEN='\[\033[0;32m\]'
YELLOW='\[\033[0;33m\]'
BLUE='\[\033[0;34m\]'
MAGENTA='\[\033[0;35m\]'
CYAN='\[\033[0;36m\]'
RESET='\[\033[0m\]'

if [ -n "${BASH_VERSION-}" ]; then
PS1="${MAGENTA}┏━━━━━━━━━━━━━━━━━━━━━━━━━
┃ ${RESET}${BLUE} \u${RESET}${RED}:${RESET}${MAGENTA}[\w]${RESET}
${MAGENTA}┗━➤ ${RESET}"
  
else 
  PS1='[\u@\h \W]\$ '
fi
