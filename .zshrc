# Set aliases
alias vi='vim -X'
alias v='vi'
alias activatess='source ~/dev/virtualenvs/ss/bin/activate'
#alias ls='ls --color=auto'
alias ls='ls -G'
alias ssh05='ssh nceorilnx05 -Y'
alias ssh06='ssh nceorilnx06 -Y'
alias ssh07='ssh nceorilnx07 -Y'
alias startx='cp ~/.xinitrc.low ~/.xinitrc && /usr/bin/startx'
alias startxlaptop='cp ~/.xinitrc.high ~/.xinitrc && /usr/bin/startx'
alias resolveamadeus='sudo cp /etc/resolv.conf.amadeus /etc/resolv.conf'
alias resolvegoogle='sudo cp /etc/resolv.conf.google /etc/resolv.conf'

#set some envs
export TERM=xterm-256color
unset SSH_ASKPASS

#key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
#bindkey "\^\H" backward-delete-word
#bindkey "\^\?" backward-delete-word
#bindkey "^\H" backward-delete-word
bindkey "^?" backward-delete-char
# # for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# # for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# # for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# # completion in the middle of a line
bindkey '^i' expand-or-complete-prefix
# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history
#
# # backspace and ^h working even after
# # returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
#
# # ctrl-w removed word backwards
bindkey '^w' backward-kill-word
#
# # ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

bindkey -M viins '^o' vi-backward-kill-word

bindkey -M vicmd 'yy' vi-yank-whole-line
bindkey -M vicmd 'Y' vi-yank-eol

bindkey -M vicmd 'u' undo
bindkey -M vicmd 'U' redo

bindkey -M vicmd 'H' run-help
bindkey -M viins '\eh' run-help

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

#bindkey '^p' history-substring-search-up
#bindkey '^n' history-substring-search-down

bindkey -M vicmd '\-' vi-repeat-find
bindkey -M vicmd '_' vi-rev-repeat-find

# Change the prompt
eval `dircolors ~/.dir_colors`
source ~/.zsh/liquidprompt


# Do zsh settings
autoload -U compinit
compinit

zstyle ':completion:*' menu select
setopt completealiases
setopt magic_equal_subst
setopt rm_star_wait
setopt list_types
setopt auto_cd
setopt hist_verify
setopt complete_in_word
setopt always_to_end
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'expand'

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
bindkey -v
source ~/.config/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('rm -fr *' 'fg=white,bold,bg=red')
export KEYTIMEOUT=0.1

bindkey -M viins 'jj' vi-cmd-mode

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
