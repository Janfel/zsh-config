# These are variables that can not be set once-and-for-all.

if [[ -n $DISPLAY ]] ; then
    export BROWSER=/usr/bin/firefox-developer-edition
else
    export BROWSER=/usr/bin/links
fi
