export https_proxy="http://127.0.0.1:15236"
export http_proxy="http://127.0.0.1:15236"

export PATH=$PATH:~/Library/Application\ Support/neovim/bin:~/.local/share/neovim/bin:~/go/bin

alias vim="nvim"
alias c="clear"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"
alias sz="source ~/.zshrc"
alias vz="nvim ~/.zshrc"
alias vv="nvim ~/.config/nvim/init.lua"
alias lg="lazygit"
alias gv="cd ~/.config/nvim"
function gi() { curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;}
