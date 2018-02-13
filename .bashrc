# v2018-01-31/00

if [ "$TERM" = "xterm-kitty" ]; then export TERM="xterm"; fi

export PS9="$(ruby -e 'require "colorize"; find = "yoshi"; repl = "♥Ԑ═З"; puts %x{id -nu}.chomp.sub(find, repl).colorize(:green) + "@".colorize(:light_white) + %x{hostname}.chomp.sub("#{find}-", "").colorize(:magenta) + ":".colorize(:light_white) + "\\w".colorize(:cyan) + "\\$>".colorize(:red) + " "')"
export PS1="$PS9"

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
