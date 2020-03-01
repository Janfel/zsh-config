# Aliases for invoking an editor.

function editor {
    : 'Open a file or files with $EDITOR.'
    ${EDITOR:-nano} $@
}

function visual {
    : 'Open a file or files with $VISUAL.'
    ${VISUAL:-${EDITOR:-nano}} $@
}

alias e=editor
alias v=visual

# Load my editor config when invoked by sudo.

function sudoeditor {
    : 'Open a file or files with $EDITOR using sudo.'
    sudo -E ${EDITOR:-nano} $@
}

function sudovisual {
    : 'Open a file or files with $VISUAL using sudo.'
    sudo -E ${VISUAL:-${EDITOR:-nano}} $@
}

alias sudoe=sudoeditor
alias sudov=sudovisual
