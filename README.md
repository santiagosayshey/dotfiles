A customized .bashrc configuration with useful aliases, functions, and a personalized prompt.

## Installation

1. Clone this repository:

   ```bash
   git clone [your-repo-url]
   ```

2. Create a backup of your existing .bashrc:

   ```bash
   mv ~/.bashrc ~/.bashrc.backup
   ```

3. Create a symlink to the new .bashrc:

   ```bash
   ln -s /path/to/cloned/repo/.bashrc ~/.bashrc
   ```

4. Reload your bash configuration:
   ```bash
   source ~/.bashrc
   ```

## Features

- `ll`: List directory contents with human-readable sizes
- `c`: Clear terminal screen
- `..`: Move up one directory
- `myip`: Show current IP address
- `update`: Update and upgrade system packages
- `screenoff`: Lock screen with password protection
- `o`: Open current directory in file explorer
- `env`: Create and activate Python virtual environment
- Custom colored prompt showing exit status, time, user, and current directory
- Random welcome messages
