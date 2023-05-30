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

zinit ice lucid wait='1'
zinit light skywind3000/z.lua

zinit wait lucid light-mode for \
  atinit"zicompinit; zicdreplay" \
      zdharma-continuum/fast-syntax-highlighting \
  atload"_zsh_autosuggest_start" \
      zsh-users/zsh-autosuggestions \
  blockf atpull'zinit creinstall -q .' \
      zsh-users/zsh-completions

#zinit light zsh-users/zsh-syntax-highlighting

zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
#zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh

#zinit ice svn
#zinit snippet OMZ::plugins/extract

zinit ice wait'2' lucid
zinit light zdharma-continuum/history-search-multi-word

zinit ice wait'3' lucid
zinit light zsh-users/zsh-history-substring-search

#export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US

[[ ! -f ~/.alias ]] || source ~/.alias 

# pipx
export PATH="$PATH:$HOME.local/bin"
