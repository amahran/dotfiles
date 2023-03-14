# My plugins
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh

# brew plugins
[[ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f /usr/local/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ]] && source /usr/local/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Use zsh shipped completion
# Enables also git completion https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
autoload -Uz compinit && compinit
# Disable captial sensitive zsh \depnds on prev command but not the order
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# History substring search key bbinding
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Load pure prompt
#autoload -U promptinit; promptinit
#prompt pure

#Load Starship
eval "$(starship init zsh)"

# Load Direnv
#eval "$(direnv hook zsh)"
