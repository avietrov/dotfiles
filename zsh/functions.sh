function startZinc() {
 zinc -status >/dev/null
 if [ $? -ne 0 ]
 then
        echo "Zinc Server is not running. Restarting."
        zinc -shutdown >/dev/null
        zinc -start -nailed >/dev/null
 fi
}

function man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

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
