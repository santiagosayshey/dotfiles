# List directory contents in long format with human-readable file sizes
alias ll='ls -lah'

# Clear the terminal screen
alias c='clear'

# Change to the parent directory
alias ..='cd ..'

# Show current IP address
alias myip="hostname -I | awk '{print $1}'"

# Update package lists and upgrade packages (for Ubuntu/Debian)
alias update='sudo apt update && sudo apt upgrade -y'

# A custom prompt with "sam@ubuntu" and the current directory
PS1='\[\e[0;32m\][ $? \[\e[0;33m\]\t \[\e[0;32m\]\u \[\e[0;33m\]\w \[\e[0;32m\]] \$ \[\e[0m\]'


# Quickly navigate to a directory and list its contents
cdls() {
    cd "$1" && ls
}

# Array of possible welcome messages
WELCOME_MESSAGES=(
  "Welcome back, Sam! Ready for some coding?"
  "Hello, Sam! What can we achieve today?"
  "Hey Sam, let's make some magic happen!"
)

# Display a random welcome message each time
echo "${WELCOME_MESSAGES[$RANDOM % ${#WELCOME_MESSAGES[@]}]}"

# Function to quickly open current directory in file explorer
o() {
    xdg-open .
}
# Created by `pipx` on 2024-09-07 07:18:35
export PATH="$PATH:/home/sam-chau/.local/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

env() {
    if [ ! -d "venv" ]; then
        python3 -m venv venv
    fi
    source venv/bin/activate
}

export PATH="$HOME/.global_tools/cactus_env/bin:$PATH"
alias screenoff="gdbus call --session --dest org.gnome.ScreenSaver --object-path /org/gnome/ScreenSaver --method org.gnome.ScreenSaver.Lock"

