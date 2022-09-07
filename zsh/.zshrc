# Setup history
HISTFILE=~/.zsh_history

# Enable auto complete
autoload -Uz compinit
compinit

# Add bash suto complete
autoload -U +X bashcompinit && bashcompinit

# menu driven auto complete
zstyle ':completion:*' menu select

# autocomplete aliases
setopt COMPLETE_ALIASES

# prompt theme system
autoload -Uz promptinit

##
# Start Antigen Block
##
source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions

# Apply antigen plugins
antigen apply

##
# End Antigen Block
##

##
# Aliases
##
alias vim="nvim"
alias vi="nvim"
##
# End Aliases
##

##
# Setup History search
##

[[ -n "$key[Up]" ]] && bindkey -- "$key[Up]" history-substring-search-up
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" history-substring-search-down



