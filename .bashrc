# v2017-12-16/00

i=0
for c in BLACK RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
	export ANSI_$c="\[$(tput setaf $i)\]"
	export ANSI_B_$c="\[$(tput setaf $((8+$i)))\]"
	i=$((i+1))
done
export ANSI_RESET="\[$(tput sgr0)\]"

USER_FIND="yoshi"; USER_REPL="♥Ԑ═З"
export PS1="$ANSI_GREEN$(id -nu | sed s/$USER_FIND/$USER_REPL/)$ANSI_B_WHITE@$ANSI_MAGENTA$(hostname | sed s/$USER_FIND-//)$ANSI_B_WHITE:$ANSI_CYAN\w$ANSI_RED\$>$ANSI_RESET "

export EDITOR="/usr/bin/nano"
export VISUAL="/usr/bin/xed"



# Fix Swing UI issues
alias java="java -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

alias ls="exa"
alias systemd="systemctl"



alias l="exa"
alias ll="exa -l"
alias lk="exa -a"
alias llk="exa -la"
alias llkk="exa -laa"

alias sysd="systemctl"

alias v="xdg-open"



if [ -f ~/.bashrc_local ]; then . ~/.bashrc_local; fi
