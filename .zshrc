# Uncomment below for GNU (Ubuntu)
# Homebrew setup
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"




# Uncomment below for GNU (Ubuntu)
# Utilizing Antigen plugin manager for zsh
source /home/linuxbrew/.linuxbrew/share/antigen/antigen.zsh
# Uncomment below for BSD (MacOS)
# source /opt/homebrew/share/antigen/antigen.zsh





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





# Bash like command-not-found package suggestions
antigen bundle command-not-found



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





# Uncomment below on BSD (MacOS)
# export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Uncomment below on GNU (Ubuntu)
# Have to use this on GNU based ls, ohmyzsh checks if $LSCOLORS value is empty first (line 29 of theme-and-appearnce.sh in .ohmyzsh/lib/). If it has a value, which it does on here as this is Ubuntu wsl distribution that comes with $LSCOLORS defined, so never goes in that if loop in the file mentioned to set the default ohmyzsh one (bold cyan directories, etc)
# TLDR need this to color ls here(GNU) but not on mac(BSD)
export LS_COLORS="di=1;36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
