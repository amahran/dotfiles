# My plugins
[[ -f ~/.bash/aliases.sh ]] && source ~/.bash/aliases.sh
[[ -f ~/.bash/functions.sh ]] && source ~/.bash/functions.sh
[[ -f ~/.bash/starship.sh ]] && source ~/.bash/starship.sh

# Enable tab completion
source ~/git-completion.bash

# colors!
# green="\[\033[0;32m\]"
# blue="\[\033[0;34m\]"
# purple="\[\033[0;35m\]"
# reset="\[\033[0m\]"

# Change command prompt
# source ~/git-prompt.sh
# export GIT_PS1_SHOWDIRTYSTATE=1 # Astrisk will show up when changing something in the git repo
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
# export PS1="\n$purple\u$green\$(__git_ps1)$blue \W $ $reset" # user name in purple, git stuff in green, directory in blue, anything after in default color

# Load Starship
eval "$(starship init bash)"
