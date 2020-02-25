# Weather

function wttr {
    local cities=($*)
    if [[ $#cities == 0 ]] ; then
        cities+='Itzehoe'
    fi
    curl 2>/dev/null "https://wttr.in/"$cities
}
