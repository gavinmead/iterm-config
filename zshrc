export GOPATH=$HOME/go
GOBIN=$HOME/go/bin
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$GOBIN:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/gavinmead/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="af-magic"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  aws
  git
)

alias k="kubectl"
alias kgp="kubectl get pod"
alias kgps="kubectl get pods"
alias kgpa="kubectl get pods --all-namespaces"
alias gitp="git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D"

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon kubecontext aws context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
