source $HOME/.zsh/antigen/antigen.zsh
# Use zshenv file for environment specific configuration. For example: aliases.
source $HOME/.zsh/zshenv

# Bundles
antigen bundle zsh-users/zsh-syntax-highlighting #Syntax Highlighting
antigen bundle zsh-users/zsh-history-substring-search #History Searching
antigen bundle zsh-users/zsh-autosuggestions #History Searching
antigen bundle zsh-users/zsh-completions #More Completions
antigen apply

# Options
setopt append_history # Add, not replace history.
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data
SAVEHIST=300 # Save history to x number of commands.
HISTFILE=~/.zsh_history # Store history to persist across sessions.
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # Case Insensitive Tab Completion.

