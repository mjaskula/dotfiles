alias tmux-colors='for i in {0..255}; do printf "\x1b[38;5;${i}mcolour${i}\x1b[0m\n"; done'
alias k=kubectl

alias tig-reflog='git reflog --pretty=raw | tig --pretty=raw'
