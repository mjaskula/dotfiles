# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias pwdc='echo -n `pwd` | pbcopy'
alias gpull='git stash save -u && git pull && git stash pop'
alias mkdir="mkdir -p"
alias ag='ag --color'

# misc

alias serve='python -m SimpleHTTPServer'

alias ips='dig +short myip.opendns.com @resolver1.opendns.com && ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d" " -f2'
