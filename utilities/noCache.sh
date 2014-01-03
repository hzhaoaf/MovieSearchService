#!/user/bin/bash

# Services
# Restart apache2
alias apre='sudo service apache2 graceful'

# Delete files
# Delete all *.pyc files
alias pydel='find . -type f -name "*.pyc" -exec rm -f {} \;'

# Combinations
# Delete all *.pyc files then restart apache2
alias pyre='pydel && apre'
