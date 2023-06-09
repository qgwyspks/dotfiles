# ls
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'

# pacman
alias clean='sudo pacman -R $(pacman -Qdtq)'

# mkdir
alias mkdir='mkdir -p'

# hypr
alias hypr="nvim ~/.config/hypr/hyprland.conf"
alias config='cd ~/.config'

# Systemctl
alias sys="systemctl"

# ShutDown
alias bye="shutdown -h now"

# nvim
alias vi="nvim"
alias vim="nvim"

# Uxplay
#alias uxplay="sudo systemctl start avahi-daemon.service && uxplay"

# zsh
alias zshrc="nvim ~/.zshrc"

# Python
alias pip="pip3"

# Conda
# alias paddle="conda activate paddle"
#alias torch="conda activate torch"

# LazyDocker
alias lzd="lazydocker"

# LazyGit
alias lg="lazygit"
