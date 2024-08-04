# Utilizing Antigen plugin manager for zsh
source /opt/homebrew/share/antigen/antigen.zsh




# Enabling Bash like help command (by default run-help is aliased to man command)
unalias run-help 2>/dev/null
autoload run-help
HELPDIR=/usr/share/zsh/5.9/help
alias help=run-help




# Setting env variables
source ~/.zshenv




# Load the oh-my-zsh's library.
antigen use oh-my-zsh




# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git




# Fish like experience bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search




# Theme - customized version in .oh-my-zsh/custom/themes
antigen bundle ~/.oh-my-zsh/custom/themes/ robbyrussell.zsh-theme --no-local-clone
# Can use below (line 20) if no modification needed of theme
# antigen theme robbyrussell




# Highlights for zsh-syntax-highlights plugin
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=203'
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan,underline'
ZSH_HIGHLIGHT_STYLES[alias]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[command]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=yellow'




# Bindings zsh-history-substring-search binds
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward




# NVM installation
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




# Tell Antigen that you're done.
antigen apply




# Loads fzf zsh utility commands [Option-c, CTRL-t, CTRL-r]
# Set up fzf key bindings and fuzzy completion
# Set after antigen apply, as the CTRL-r keybind gets overwritten
source <(fzf --zsh)
