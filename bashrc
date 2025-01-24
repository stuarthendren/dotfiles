echo "BASH PROFILE ACTIVATED"

# Load all files from .rc.d directory
if [ -d "$HOME/.rc.d" ]; then
  for file in $HOME/.rc.d/*; do
    source "$file"
  done
fi


. "$HOME/.local/bin/env"
