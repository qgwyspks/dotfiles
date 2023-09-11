if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship

# 自动建议
zinit ice lucid wait atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions

# 语法高亮
zinit ice lucid wait atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay"
zinit light zdharma-continuum/fast-syntax-highlighting
# zinit light zsh-users/zsh-syntax-highlighting

# 自动补全
zinit ice lucid wait blockf
zinit light zsh-users/zsh-completions


zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
unsetopt share_history
#zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh

#zinit ice svn
#zinit snippet OMZ::plugins/extract

# 自动跳转
zinit ice lucid wait'1'
zinit light agkozak/zsh-z


zinit ice wait'1' lucid
zinit light zdharma-continuum/history-search-multi-word

#bindkey '^R' history-search-multi-word

#zstyle :plugin:history-search-multi-word reset-prompt-protect 1

[[ ! -f ~/.config/zsh/alias.zsh ]] || source $HOME/.config/zsh/alias.zsh
[[ ! -f ~/.config/zsh/env.zsh ]] || source $HOME/.config/zsh/env.zsh

