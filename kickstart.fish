function printtime --on-event fish_postexec
    set duration (echo "$CMD_DURATION 1000" | awk '{printf "%.3fs", $1 / $2}')
    echo \t\($duration\)
end

# Use ctrl + o to `cd ..`
bind \co 'cd ..; commandline -f repaint'

