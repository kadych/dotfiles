# Setup fzf
# ---------
if [[ ! "$PATH" == */home/kirill/.fzf/bin* ]]; then
  export PATH="$PATH:/home/kirill/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */home/kirill/.fzf/man* && -d "/home/kirill/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/home/kirill/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/kirill/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/kirill/.fzf/shell/key-bindings.zsh"

