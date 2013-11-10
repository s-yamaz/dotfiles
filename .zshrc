fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit
compinit

bindkey -v

setopt auto_pushd

#-------------------
# HISTORY
#-------------------
setopt hist_ignore_dups
setopt hist_no_store
setopt hist_reduce_blanks

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

RPROMPT='%~'
export LANG=ja_JP.UTF-8
export LSCOLORS=gxfxcxdxbxegedabagacad

eval "$(rbenv init -)"

alias ls='ls -G'
#alias gvim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -g &'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias gvim='env LANG=ja_JP.UTF-8 open -a /Applications/MacVim.app "$@" &'

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.rbenv/shims:/usr/local/heroku/bin:$PATH"
