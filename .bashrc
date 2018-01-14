# Arch supplied defaults.
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# My defaults

# -----------------
# --- Variables ---
# -----------------

# My tar executables are stored at ~/App but symbolic links running the 
# applications are located in ~/Bin. ~/Scripts are my custom bash scripts
# directory.
# ~/.cabal/bin is needed for Haskell packages.
export PATH="$PATH:~/Bin"
export PATH="$PATH:~/Scripts"
export PATH="$PATH:~/.cabal/bin"

# Colored man pages
# https://wiki.archlinux.org/index.php/Man_page#Colored_man_pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

cur_os=`uname`
PS1='[\u@\h \W]\$ '         # used for customize the terminal prompt
if [[ "$cur_os" == "Darwin" ]]; then
  export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
  export LSCOLORS=ExFxBxDxCxegedabagacad
fi

# -----------------
# ---- Aliases ----
# -----------------

alias ls='ls -G'            # always colorize ls
# Common pacman aliases for lazy package control
if [[ "$cur_os" == 'Linux' ]]; then
  if ! gcc --version | grep -q Ubuntu; then
    alias pacupg='yaourt -Syua'
    alias pacin='sudo pacman -S'
    alias pacrem='sudo pacman -Rns'
    alias pacrep='pacman -Ss'
    alias paclocs='pacman -Qs'
    alias pacwhere='pacman -Ql'
    alias pacrorph='sudo pacman -Rns $(pacman -Qtdq)'
    alias pacfiles='pacman -Ql'
  fi
fi

# Common systemctl aliases for lazy daemon (background application) control
alias ctlart="sudo systemctl start"
alias ctlopt="sudo systemctl stop"
alias ctlen="sudo systemctl enable"
alias ctldis="sudo systemctl disable"
