# Setting zsh env variables




# This is for help pages (they use $PAGER env variable which default is less)
# Using "less -i" provides case insensitivity
export PAGER='less -i'




# This is to use the bash scripts located in ~/scripts/bash (sym linked into ~/.local/bin/)
# export CD_HISTORY_FILE_PATH="${HOME}/.cd_history"




# Adding my custom scripts to PATH
export PATH=$PATH:$HOME/.local/bin




# Adding variables for cd-history
source cdh_env




