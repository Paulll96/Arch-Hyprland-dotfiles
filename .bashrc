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
   cp "$1" /usr/share/sddm/themes/sddm-astronaut-theme/Backgrounds/current-wallpaper.png

    matugen image "$1" --source-color-index 0
       ~/.config/scripts/update-sddm-colors.sh &
     
   hyprctl reload

   killall -SIGUSR2 waybar


for sock in /tmp/kitty-*; do
    [ -S "$sock" ] || continue
    kitty @ --to "unix:$sock" set-colors -a ~/.config/kitty/colors.conf >/dev/null 2>&1
done
}
eval "$(zoxide init bash)"
eval "$(starship init bash)"
