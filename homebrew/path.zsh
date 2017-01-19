export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
export PATH=`echo $(brew --prefix coreutils)/libexec/gnubin`:$PATH
export PATH=/usr/local/share/python:$PATH
export PATH=$PATH:/usr/local/opt/ruby/bin
export PATH=$PATH:/opt/local/lib/mysql55/bin


export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$(brew --prefix openssl)/lib
