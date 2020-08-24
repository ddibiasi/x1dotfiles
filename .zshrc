export ZSH=/usr/share/oh-my-zsh
export WINIT_HIDPI_FACTOR=1
export VISUAL=nano
export EDITOR=nano
export TERMINAL=alacritty

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dibi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
  z)

source $ZSH/oh-my-zsh.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases
alias	pacman="sudo pacman"
alias	sl="systemctl suspend"

# User configuration

printf "\x1b[32m"
echo '         __                                     __   '
echo '  ____  / /_     ____ ___  __  __   ____  _____/ /_  '
echo ' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '
echo '/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '
echo '\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '
echo '                        /____/                       '
printf "${NORMAL}"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan"
export PATH=/usr/local/bin:$PATH
fpath=(/usr/local/share/zsh-completions $fpath)

# Arch Plugins installed via pacman
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# Autostart X
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

# .Net Core stuff
export DOTNET_CLI_TELEMETRY_OPTOUT=1
#export DOTNET_ROOT=$HOME/dotnet
#export PATH=$PATH:$HOME/dotnet
