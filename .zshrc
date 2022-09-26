export https_proxy="http://127.0.0.1:15236"
export http_proxy="http://127.0.0.1:15236"

export PATH=$PATH:~/Library/Application\ Support/neovim/bin:~/.local/share/neovim/bin:~/go/bin

alias vim="nvim"
alias c="clear"
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"
alias sz="source ~/.zshrc"
alias vz="nvim ~/.zshrc"
alias vv="nvim ~/.config/nvim/init.lua"
alias lg="lazygit"
alias gv="cd ~/.config/nvim"
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}

eval "$(starship init zsh)"

export ZSH_CONFIG="$HOME/src/dotfiles"
source $ZSH_CONFIG/zsh-z/zsh-z.plugin.zsh
source $ZSH_CONFIG/zsh-completions/zsh-completions.plugin.zsh
fpath=(./zsh-completions/src $fpath)
source $ZSH_CONFIG/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
source $ZSH_CONFIG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
