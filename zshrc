source $HOME/.zsh/antigen/antigen.zsh
# Use zshenv file for environment specific configuration. For example: aliases.
source $HOME/.zsh/zshenv

# Bundles
#Syntax Highlighting
antigen bundle zsh-users/zsh-syntax-highlighting
#History Searching
antigen bundle zsh-users/zsh-history-substring-search
#More Completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen apply

bindkey '^f' autosuggest-accept

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

_has() {
	return $( whence $1 &>/dev/null )
}
# fzf + ag configuration
if _has fzf && _has ag; then
  export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_DEFAULT_OPTS='
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
  '
fi

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export PS1="%n %1d $ "
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
