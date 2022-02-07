export PIP_REQUIRE_VIRTUALENV=true

syspip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi
# export PYENV_VIRTUALENV_DISABLE_PROMPT=1

if which pyenv-virtualenv-init > /dev/null; then
  eval "$(pyenv virtualenv-init -)"
fi
