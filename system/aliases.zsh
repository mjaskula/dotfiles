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

#alias ls='ls -G'
alias pwdc="echo `pwd` | pbcopy"
alias gpull='git stash save -u && git pull && git stash pop'
alias mkdir="mkdir -p"
