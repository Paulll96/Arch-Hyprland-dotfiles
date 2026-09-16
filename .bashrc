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

    sat=$(magick "$1" -colorspace HSL -channel G -separate +channel \
          -format "%[fx:mean*100]" info:)

    if awk "BEGIN {exit !($sat < 5)}"; then
        matugen color hex "#404040" --type scheme-monochrome
    else
        matugen image "$1" --source-color-index 0
    fi

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.local/bin:$PATH"
