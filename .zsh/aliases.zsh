# Alias
# ---
#
#alias k="kubectl"

# mac OS shortcuts
alias code="open -a 'Visual Studio Code'"

# ALIAS COMMANDS
#alias ls="exa --icons --group-directories-first"
#alias ll="exa --icons --group-directories-first -l"
#alias g="goto"
alias grep='grep --color'

# Git
alias graph="git log --oneline --decorate --all"

# dotfiles git command -> config works like 'git' in this case
alias config="git --git-dir=$HOME/dotfiles --work-tree=$HOME"

# GNU ls for listing directories first
alias ls="gls --group-directories-first --color=tty"
