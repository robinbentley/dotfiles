# clear a port
clear-port() { kill "$(lsof -t -i :$1)"; }

# force clear a port
kill-port() { kill -kill "$(lsof -t -i :$1)"; }
