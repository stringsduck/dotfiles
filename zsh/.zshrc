autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
unsetopt auto_cd
setopt append_history
setopt hist_ignore_all_dups
setopt prompt_subst
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward
source ~/.aliases
source ~/.aliases.extra
source ~/.path
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
PROMPT='🦉 %F{069}%B%3~%b%f '
RPROMPT=' %F{215}$(vcprompt -f "(%b)")%f'

# Open new tab at current directory
if [[ $TERM_PROGRAM == "Apple_Terminal" ]] {
  function chpwd {
    local SEARCH=' '
    local REPLACE='%20'
    local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
    printf '\e]7;%s\a' "$PWD_URL"
  }
  chpwd
}

export LSCOLORS=Gxfxcxdxbxegedabagacad
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=/opt/homebrew/bin:$PATH
