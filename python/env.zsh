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