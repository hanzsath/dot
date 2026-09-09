# ============================================
# Zsh Config — Tokyo Night Theme
# ============================================

# Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting eza grc)

ZSH_COLORIZE_STYLE="colorful"
ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

# --------------------------------------------
# Aliases
# --------------------------------------------

alias ls="eza -a --color=always --group-directories-first --icons"
alias la="eza -la --color=always --group-directories-first --icons"
alias ll="eza -l --color=always --group-directories-first --icons"
alias lt="eza --tree --icons --level=2"
alias nmap="grc nmap"
alias c="clear"
alias n="nvim"
alias ping="grc ping"
alias nv="navi --print | bat -l bash --pager=never"

# --------------------------------------------
# PATH
# --------------------------------------------

export PATH="$HOME/.local/bin:$HOME/.filen-cli/bin:$HOME/go/bin:$HOME/bin:$PATH"

# --------------------------------------------
# Tools
# --------------------------------------------

eval "$(zoxide init zsh)"

# p10k config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
