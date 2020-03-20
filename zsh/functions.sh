#!/bin/zsh


function cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

function notify() {
	title='Done'
	message=' '
	if [ "$1" != "" ]; then
		message="$1"
	fi

	if [ "$2" != "" ]; then
		title="$2"
	fi

	osascript -e "display notification \"$message\" with title \"$title\""
}
