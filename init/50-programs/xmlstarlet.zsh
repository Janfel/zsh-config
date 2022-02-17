# XMLStarlet
###if (($+commands[xml]))

function xml-exmime() {
	: 'Extract a <mime-type> element from a MIME XML document.'
	xml select --template \
		--match "//_:mime-type[@type='$1']" \
		--copy-of . \
		--nl ${@[2,-1]}
}

function xml-exredump() {
	: 'Extract all <game> elements with a given hash of a given type
	from a redump.org data file.'
	xml select --template \
		--match "//game/rom[@$1='$2']" \
		--copy-of '..' \
		--nl ${@[3,-1]}
}
