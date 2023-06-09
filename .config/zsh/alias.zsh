# ..
alias -g ...='../..'
alias -g ....='../../..'


# ls
alias ls='ls --color -F'
alias ll='ls --color -F -l'
alias la='ls --color -F -a'
alias lla='ls --color -F -l -a'
#alias ls='exa'


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
