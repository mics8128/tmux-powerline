# Print the average load.

run_segment() {
    if !(shell_is_cygwin) ; then
        uptime | cut -d "," -f 3- | cut -d ":" -f2 | sed -e "s/^[ \t]*//"
    fi
	exit 0
}
