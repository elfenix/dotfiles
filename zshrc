# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ----------------------------------------------------------------------------
# Allow zsh to be setup again
# ----------------------------------------------------------------------------
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt nomatch
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/amulbrook/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# -----------------------------------------------------------------------------
# p10k setup
# -----------------------------------------------------------------------------
source ~/.zsh_files/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ls='ls --color=auto'

# To customize prompt, run `p10k configure` or edit ~/projects/dotfiles/p10k.zsh.
[[ ! -f ~/projects/dotfiles/p10k.zsh ]] || source ~/projects/dotfiles/p10k.zsh

# -----------------------------------------------------------------------------
# My Actual Configuration Starts Here
# -----------------------------------------------------------------------------
export GPG_TTY=$TTY

