


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# History
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Changing directories
setopt auto_cd
setopt pushd_ignore_dups
setopt pushdminus

# Completion
setopt auto_menu
setopt always_to_end
# Other
setopt prompt_subst

plugins=(
  git
  docker
  docker-compose
  docker-machine
  dotenv
  gh
  gitignore
  kubectl
  kubectx 
  macos
  virtualenv
  vscode
)
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="powerlevel10k/powerlevel10k"
export TERM="xterm-256color"

source $ZSH/oh-my-zsh.sh

# User configuration

# Turn on bash auto complete compatibility
autoload bashcompinit
bashcompinit

# Load default dotfiles
source $HOME/.bashrc

# Enable docker-machine completion.
if [ -f '/etc/bash_completion.d/docker-machine-prompt.bash' ]; then source '/etc/bash_completion.d/docker-machine-prompt.bash'; fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh





