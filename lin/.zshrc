#
# ~/.zshrc
#

# =======================================================================
# prompt
# -----------------------------------------------------------------------

setopt prompt_subst
setopt prompt_cr

paren="()"
color="38;5;40"

if [[ -n "$LOGIN_SHELL" ]]; then
    paren="[]"
    color="38;5;45"
fi

if [[ $UID = 0 ]]; then
    color="38;5;183"
fi

#PROMPT="%{[${color}m%}$paren[1]%n@%m:%~$paren[2]%(!.#.$)%{[0m%} "
RPROMPT="%{[${color}m%}$paren[1]%~$paren[2]%{[0m%}"
PROMPT="%{[${color}m%}%n@%m%%%{[0m%} "


if [[ -n "$WINDOW" ]]; then
    preexec() {
        local cmd=${1[(wr)^(*=*|sudo|vi|lv|ssh|-*)]}
        echo -ne "\ek$cmd\e\\"
    }

    precmd() {
        local cwd=`print -nP %~`
        echo -n "\ek$cwd:t/\e\\"
    }
fi

# =======================================================================
# history
# -----------------------------------------------------------------------

setopt append_history
setopt extended_history
setopt hist_expand
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_save_no_dups
#setopt share_history

bindkey -e

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=100000
LISTMAX=1000

if [[ $UID = 0 ]]; then
    unset HISTFILE
    SAVEHIST=0
fi

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end  history-search-end
bindkey "" history-beginning-search-backward-end
bindkey "" history-beginning-search-forward-end

function history-all { history -E 1 }

# =======================================================================
# completion
# -----------------------------------------------------------------------

setopt auto_list
setopt auto_param_keys
setopt auto_param_slash
setopt extended_glob
setopt list_types
setopt list_packed
setopt mark_dirs

autoload -U compinit
compinit -u

zstyle ':completion:*' use-cache true
zstyle ':completion:*:default:' menu select=1
#zstyle ':completion:*:default:' menu select true
zstyle ':completion:*:cd:*' tag-order local-direcories path-directories
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# _cache_hosts=(`sed -ne 's/,.*//p' ~/.ssh/known_hosts`)


# =======================================================================
# cd, ls
# -----------------------------------------------------------------------

setopt auto_cd
setopt auto_pushd

# =======================================================================
# process
# -----------------------------------------------------------------------

setopt auto_resume
setopt magic_equal_subst

# =======================================================================
# keyboard
# -----------------------------------------------------------------------

setopt ignore_eof
setopt NO_flow_control
setopt NO_hup

# =======================================================================
# alias
# -----------------------------------------------------------------------

setopt complete_aliases

alias ls='ls --color=auto'
alias ll="ls -l"
#eval `dircolors -b ~/etc/dircolors.conf`

alias vi="vim"
alias datetime="perl -e 'print localtime . qq{\n}'"
alias pm="perldoc -m"
alias screen="/bin/tscreen"
alias svk="PERL5LIB= svk"

alias -g L="| lv"
alias -g T="| tail"
alias -g H="| head"
alias -g G="| grep"
alias -g W="| wc"

PATH=${PATH}:${HOME}/bin:${HOME}/opt/bin


# ~/.zshrc
# perlpbrew
source $HOME/perl5/perlbrew/etc/bashrc

