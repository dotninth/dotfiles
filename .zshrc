# Directory to save Zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Autodownload Zinit
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Load Zinit
source "${ZINIT_HOME}/zinit.zsh"

# Load Starship
eval "$(starship init zsh)"

# Plugins
zinit ice depth=1; zinit light jeffreytse/zsh-vi-mode
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Snippets & oh-my-zsh plugins
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found
zinit snippet OMZP::composer
zinit snippet OMZP::laravel

# Autocompletion
autoload -Uz compinit && compinit
zinit cdreplay -q

# Keybinds
ZVM_VI_INSERT_ESCAPE_BINDKEY=jj
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='ls --color'
alias cz=chezmoi
alias vim=nvim
alias xc="xenogit commit -m gpt-4-turbo-preview"
alias axc="git add . && xc"
alias axcp="axc && git push"
# alias tmix="tmux"
# alias mux=tmuxinator

# Path Exports
export PATH=$HOME/.bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.config/composer/vendor/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH="$PATH:$HOME/.local/bin"
export PATH=~/.npm-global/bin:$PATH

# Env Vars
export EDITOR="hx"
export OPENAI_API_KEY=
export ANTHROPIC_API_KEY=
export COPILOT_API_KEY=
export HANDLER=copilot # openai/copilot/codeium

# Bun & Bun Completions
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Integrations
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
