# Neofetch configuration
neofetch --ascii_colors 68 --ascii_distro Ubuntu

#-------------------------------------------------------------------------------
# PERFORMANCE OPTIMIZATION
#-------------------------------------------------------------------------------
# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#-------------------------------------------------------------------------------
# OH-MY-ZSH CONFIGURATION
#-------------------------------------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)

#-------------------------------------------------------------------------------
# HISTORY CONFIGURATION
#-------------------------------------------------------------------------------
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# History options
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS

#-------------------------------------------------------------------------------
# PATH CONFIGURATION
#-------------------------------------------------------------------------------
export PATH="$PATH:/home/sam-chau/.local/bin"
export PATH="$HOME/.global_tools/cactus_env/bin:$PATH"

#-------------------------------------------------------------------------------
# ALIASES
#-------------------------------------------------------------------------------
# System aliases
alias ll='ls -lah'
alias c='clear'
alias ..='cd ..'
alias myip="hostname -I | awk '{print $1}'"
alias vim="nvim"
alias screenoff="gdbus call --session --dest org.gnome.ScreenSaver --object-path /org/gnome/ScreenSaver --method org.gnome.ScreenSaver.Lock"

# Docker aliases
alias d='docker'
alias dc='docker compose'
alias dcu='docker compose up'
alias dcud='docker compose up -d'
alias dcd='docker compose down'
alias dcl='docker compose logs'
alias dclf='docker compose logs -f'
alias dcub='docker compose up --build'
alias dcubd='docker compose up --build -d'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dex='docker exec -it'
alias di='docker images'
alias drmi='docker rmi'
alias drm='docker rm'
alias dprune='docker system prune -a'

#-------------------------------------------------------------------------------
# FUNCTIONS
#-------------------------------------------------------------------------------
# Open current directory in file explorer
o() {
    xdg-open .
}

# Docker development cleanup and rebuild
dcdev() {
    docker compose down
    docker image prune -f
    docker compose up --build
}

# Docker system cleanup
dclean() {
    docker container prune -f
    docker network prune -f
    docker image prune -f
    docker builder prune -f
}

#-------------------------------------------------------------------------------
# THEME AND PLUGIN CONFIGURATION
#-------------------------------------------------------------------------------
# Load plugins and themes
source /home/sam-chau/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Load Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh