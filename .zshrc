
# Set a included zsh theme
# autoload -Uz promptinit
# promptinit
# prompt bart

set -o vi
if type brew &>/dev/null; then

  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

# Source the .zsh_aliases file
. ~/.zsh_aliases





NEWLINE=$'\n'
PS1="%F{green}%B┌───────────────────>
│%b%f%B%F{blue}%~%f%b
%F{green}└─>%f %F{magenta}#%f "

# PS1 = '{BOLD_GREEN}┌───────────────────>\n│{RESET} {BLUE} {cwd}{RESET}{YELLOW}{curr_branch: [{}]}{RESET}\n{BOLD_GREEN}└─>{RESET}{PURPLE} {prompt_end}{RESET} '
alias config='/usr/bin/git --git-dir=/Users/gizmo/.dotfiles/ --work-tree=/Users/gizmo'
