alias ll='ls -A'
alias bg="feh --randomize --bg-scale ~/Pictures/wallpapers/*"
#--------------------------------------ANDROID-DEVICE------------------------------------#
#alias android-mount="jmtpfs ~/SonyData"
#alias android-unmount="fusermount -u ~/SonyData"

#List out all connected --device
# alias sl="simple-mtpfs -l"
#--------------------------------------------END-----------------------------------------#

# Use neovim for vim if present.
command -v nvim >/dev/null && alias vim="nvim" vimdiff="nvim -d"

# Verbosity and settings that you pretty much just always are going to want.
alias \
	bat="cat /sys/class/power_supply/BAT?/capacity" \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -v" \
	mkd="mkdir -pv" \
	yt="youtube-dl --add-metadata -i -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'" \
	yta="yt -x -f bestaudio/best" \
	ffmpeg="ffmpeg -hide_banner"

# Colorize commands when possible.
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi"

# These common commands are just too long! Abbreviate them.
alias \
	ka="killall" \
	g="git" \
	trem="transmission-remote" \
	YT="youtube-viewer" \
	sdn="sudo shutdown -h now" \
	r="ranger" \
	#e="$EDITOR" \
	#v="$EDITOR" \
	#p="sudo pacman" \
	xi="sudo xbps-install" \
	xr="sudo xbps-remove -R" \
	xq="xbps-query"

# This alias is important. It enables the `pauseallmpv` command.
alias mpv="mpv --input-ipc-server=/tmp/mpvsoc$(date +%s)"

# Some other stuff
alias \
	magit="nvim -c MagitOnly" \
	ref="shortcuts >/dev/null; source ~/.config/shortcutrc" \
	weath="less -S ~/.local/share/weatherreport" \
