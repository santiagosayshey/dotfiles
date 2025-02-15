# neofetch
neofetch --ascii_colors 68 --ascii_distro Ubuntu

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git)


# Custom aliases
alias ll='ls -lah'
alias c='clear'
alias ..='cd ..'
alias myip="hostname -I | awk '{print $1}'"
alias screenoff="gdbus call --session --dest org.gnome.ScreenSaver --object-path /org/gnome/ScreenSaver --method org.gnome.ScreenSaver.Lock"
alias vim="nvim"

o() {
    xdg-open .
}

# Path additions
export PATH="$PATH:/home/sam-chau/.local/bin"
export PATH="$HOME/.global_tools/cactus_env/bin:$PATH"

source /home/sam-chau/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
