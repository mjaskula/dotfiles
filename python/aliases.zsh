alias flake8_changed_files='flake8 $(git diff --name-only $(git branchpoint))'
alias flake8_mychanges='git diff master | flake8 --diff'
