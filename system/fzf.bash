# Setup fzf
# ---------
if [[ ! "$PATH" == */home/testit/.fzf/bin* ]]; then
  export PATH="$PATH:/home/testit/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */home/testit/.fzf/man* && -d "/home/testit/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/home/testit/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/testit/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/testit/.fzf/shell/key-bindings.bash"

