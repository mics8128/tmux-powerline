# Show cpu percentage

run_segment() {
    if (shell_is_cygwin) ; then
        cpu_useage=$(wmic cpu get loadpercentage | sed -n "2p" | xargs | sed -e "s/^[ \t]*//")
    else
        cpu_useage=$(ps -A -o %cpu | awk '{s+=$1}i END {print s}' | sed 's/\.[^ ]*/ /g')
    fi
        echo CPU: $cpu_useage%
    exit 0
}
