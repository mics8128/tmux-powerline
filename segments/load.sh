# Print the average load.

run_segment() {
    if (shell_is_cygwin) ; then
        cpu_useage=$(wmic cpu get loadpercentage | sed -n "2p" | xargs | sed -e "s/^[ \t]*//")
        echo CPU: $cpu_useage%
    else
        uptime | cut -d "," -f 3- | cut -d ":" -f2 | sed -e "s/^[ \t]*//"
    fi
	exit 0
}
