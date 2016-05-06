#
# ~/.bashrc
#

# Arch supplied defaults.
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '         # used for customize the terminal prompt

# My tar executables are stored at ~/App but symbolic links running the 
# applications are located in ~/bin. ~/Scripts are my custom bash scripts
# direcotry.
# ~/.cabal/bin is needed for Haskell packages.
export PATH="$PATH:~/Bin"
export PATH="$PATH:~/Scripts"
export PATH="$PATH:~/.cabal/bin"
export PATH="$PATH:~/Builds/cilktools-linux/bin"

export ANDROID_HOME=/opt/android-sdk
export CURLCPP_HOME=/home/typedeph/libs/cpp/curlcpp/
export CMAKE_LIBRARY_PATH=$CMAKE_LIBRARY_PATH:$CURLCPP_HOME/libs
export CMAKE_INCLUDE_PATH=$CMAKE_LIBRARY_PATH:$CURLCPP_HOME/include

# Common pacman aliases for lazy package control
alias pacupg='yaourt -Syua'
alias pacin='sudo pacman -S'
alias pacrem='sudo pacman -Rns'
alias pacrep='pacman -Ss'
alias paclocs='pacman -Qs'
alias pacwhere='pacman -Ql'
alias pacrorph='sudo pacman -Rns $(pacman -Qtdq)'
alias pacfiles='pacman -Ql'

# Common systemctl aliases for lazy daemon (background application) control
alias ctlart="sudo systemctl start"
alias ctlopt="sudo systemctl stop"
alias ctlen="sudo systemctl enable"
alias ctdis="sudo systemctl disable"

# Defines c++ and c compiler globally
export CC="/usr/bin/gcc"
export CXX="/usr/bin/g++"

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

## Notes
# : seperate entries in a environment variable (that is something like PATH)
