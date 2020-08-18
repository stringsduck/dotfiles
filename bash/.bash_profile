yellow=$(tput setaf 3)
reset=$(tput sgr0)
bold=$(tput bold)

HISTCONTROL=ignoredups
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
PS1="\[$bold\]ϕ\[$reset\] \W \[$yellow\]\$(vcprompt -f '(%b)%m%u ' || ' ')\[$reset\]"

shopt -s cdspell
shopt -s checkwinsize
shopt -s histappend

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

. ~/.aliases
. ~/.aliases.extra
. ~/.path

complete -d cd
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
__git_complete g _git
