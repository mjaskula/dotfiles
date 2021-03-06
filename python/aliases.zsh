alias flake8_changed_files='flake8 $(git diff --name-only $(git branchpoint))'
alias flake8_mychanges='git diff master | flake8 --diff'
alias flake8-watch='fswatch -o -l 2 -i "*.py" -e ".mypy_cache" -e ".git" -e ".idea" -e ".cache" -e "logs" . | xargs -n1 -I{} flake8 --statistics --count'

alias mypy-watch='fswatch -o -l 2 -i "*.py" -e ".mypy_cache" -e ".git" -e ".idea" -e ".cache" -e "logs" . | xargs -n1 -I{} mypy --ignore-missing-imports docker/code scripts/regression_testing'

