# XMLStarlet
###if (($+commands[xml]))

function xml-exmime() {
	: 'Extract a mime-type element from a MIME XML document.'
	xml select --template \
		--match "//_:mime-type[@type='$1']" \
		--copy-of . \
		--nl ${@[2,-1]}
}
