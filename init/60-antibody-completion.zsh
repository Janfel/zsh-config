_antibody() {
        IFS=' ' read -A reply <<< "help bundle update home purge list init"
}
compctl -K _antibody antibody
