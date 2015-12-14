# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias ssh="TERM=xterm-256color LC_ALL=C ssh"

export PS1="\[\033[38;5;146m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;180m\]:\[$(tput sgr0)\]\[\033[38;5;110m\]\w\[$(tput sgr0)\]\[\033[38;5;180m\] \$(__git_ps1 '(%s)')\n\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export LS_COLORS="rs=0:di=38;5;110:ln=38;5;180:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=38;5;150:*.tar=38;5;174:*.tgz=38;5;174:*.arj=38;5;174:*.taz=38;5;174:*.lzh=38;5;174:*.lzma=38;5;174:*.tlz=38;5;174:*.txz=38;5;174:*.zip=38;5;174:*.z=38;5;174:*.Z=38;5;174:*.dz=38;5;174:*.gz=38;5;174:*.lz=38;5;174:*.xz=38;5;174:*.bz2=38;5;174:*.bz=38;5;174:*.tbz=38;5;174:*.tbz2=38;5;174:*.tz=38;5;174:*.deb=38;5;174:*.rpm=38;5;174:*.jar=38;5;174:*.war=38;5;174:*.ear=38;5;174:*.sar=38;5;174:*.rar=38;5;174:*.ace=38;5;174:*.zoo=38;5;174:*.cpio=38;5;174:*.7z=38;5;174:*.rz=38;5;174:*.jpg=38;5;168:*.jpeg=38;5;168:*.gif=38;5;168:*.bmp=38;5;168:*.pbm=38;5;168:*.pgm=38;5;168:*.ppm=38;5;168:*.tga=38;5;168:*.xbm=38;5;168:*.xpm=38;5;168:*.tif=38;5;168:*.tiff=38;5;168:*.png=38;5;168:*.svg=38;5;168:*.svgz=38;5;168:*.mng=38;5;168:*.pcx=38;5;168:*.mov=38;5;168:*.mpg=38;5;168:*.mpeg=38;5;168:*.m2v=38;5;168:*.mkv=38;5;168:*.webm=38;5;168:*.ogm=38;5;168:*.mp4=38;5;168:*.m4v=38;5;168:*.mp4v=38;5;168:*.vob=38;5;168:*.qt=38;5;168:*.nuv=38;5;168:*.wmv=38;5;168:*.asf=38;5;168:*.rm=38;5;168:*.rmvb=38;5;168:*.flc=38;5;168:*.avi=38;5;168:*.fli=38;5;168:*.flv=38;5;168:*.gl=38;5;168:*.dl=38;5;168:*.xcf=38;5;168:*.xwd=38;5;168:*.yuv=38;5;168:*.cgm=38;5;168:*.emf=38;5;168:*.axv=38;5;168:*.anx=38;5;168:*.ogv=38;5;168:*.ogx=38;5;168:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:"
export GREP_COLORS="ms=38;5;150:fn=38;5;110:se=38;5;180:bn=38;5;180:ln=38;5;180"
export M2_HOME=/opt/maven
export GOROOT=/opt/go
export GOPATH=~/projects/gopath
export PATH=$PATH:$M2_HOME/bin:$GOROOT/bin
