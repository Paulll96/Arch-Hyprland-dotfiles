#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
walltheme () {
    awww img "$1" --transition-type grow
    cp "$1" ~/.cache/current-wallpaper.png

    matugen image "$1" --source-color-index 1

    ~/.config/scripts/update-sddm-colors.sh &

    hyprctl reload

    pkill waybar
    nohup waybar > /dev/null 2>&1 &
}
