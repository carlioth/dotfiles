export ZSH="$HOME/.oh-my-zsh"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/go/bin"

export EDITOR='subl -w'
source $HOME/.aliases

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
eval "$(direnv hook zsh)"

POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='green'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE_COUNT=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status dir newline vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time time kubecontext)
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=''
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_KUBECONTEXT_BACKGROUND="21"
POWERLEVEL9K_KUBECONTEXT_FOREGROUND="254"

source $ZSH/oh-my-zsh.sh

[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
