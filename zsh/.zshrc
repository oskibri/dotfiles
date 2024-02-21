setopt no_global_rcs
source ~/.config/zsh/.zshfunc

# Prompt
PROMPT="%F{cyan}%B[%T %n]%b%f %d > "
RPROMPT='%F{245}%*%f'    

# Autocompletion
autoload -Uz compinit
compinit -d ~/.config/zsh/zcompdump

# Environment Variables
export XDG_CONFIG_HOME=$HOME/.config
export MYVIMRC=$XDG_CONFIG_HOME/vim/vimrc
export VIMINIT='source $MYVIMRC'
export TERM=xterm-256color
export DISPLAY=:0

# History files
export XDG_STATE_HOME=$HOME/.local/state
export HISTFILE=$XDG_STATE_HOME/zsh/history
export HISTSIZE=500000
export SAVEHIST=500000
setopt appendhistory
setopt INC_APPEND_HISTORY  
setopt SHARE_HISTORY
export LESSHISTFILE=$XDG_STATE_HOME/less/history

# Data files
export XDG_DATA_HOME=$HOME/.local/share

# Homebrew Variables
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin${PATH+:$PATH}:/opt/homebrew/sbin";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

# QEMU Variables
export ARM_CODE=/opt/homebrew/Cellar/qemu/8.1.3_2/share/qemu/edk2-aarch64-code.fd
export ARM_VARS=/opt/homebrew/Cellar/qemu/8.1.3_2/share/qemu/edk2-arm-vars.fd

# Aliases
alias l='ls -lahFG'
alias brew='arch -arm64 brew'
alias vim='nvim'
alias cv='python3 -m venv .venv && source .venv/bin/activate'

