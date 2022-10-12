export PATH="/usr/local/bin:/usr/local/sbin:$PATH"  # intel
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"  # apple silicon

export MANPATH="/usr/local/man:$MANPATH"

export PATH=`echo $(brew --prefix coreutils)/libexec/gnubin`:$PATH
export PATH=/usr/local/share/python:$PATH
export PATH=$PATH:/usr/local/opt/ruby/bin


export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$(brew --prefix openssl)/lib
