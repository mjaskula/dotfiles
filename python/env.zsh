export PIP_REQUIRE_VIRTUALENV=true

syspip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

export WORKON_HOME=$HOME/.virtualenvs

VENVWRAPPER="$(which virtualenvwrapper.sh)"
if [[ -e $VENVWRAPPER ]]
then
  source $VENVWRAPPER
fi

# eval "$(register-python-argcomplete pipx)"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
