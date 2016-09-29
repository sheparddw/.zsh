source $HOME/.zsh/antigen/antigen.zsh

# Bundles
antigen-bundle zsh-users/zsh-syntax-highlighting #Syntax Highlighting
antigen-bundle zsh-users/zsh-history-substring-search #History Searching
antigen-bundle zsh-users/zsh-autosuggestions #History Searching
antigen-bundle zsh-users/zsh-completions #More Completions

# Options
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data
SAVEHIST=100 # Save history to 100 commands.
HISTFILE=~/.zsh_history # Store history to persist across sessions.

# Aliases
alias composer="php /usr/local/bin/composer.phar"

