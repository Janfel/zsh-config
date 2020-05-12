# Shell completion for antibody
###if (($+commands[antibody]))

function _antibody {
	reply=(help bundle update home purge list init)
}
compctl -K _antibody antibody
