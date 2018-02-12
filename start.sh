#!/bin/sh

forever start --pidFile /var/run/blink.pid -l /dev/null -a -d -c "node" /blink.js

cat <<EOF >>~/.bashrc
trap 'forever stop /blink.js;echo 2 > /sys/class/gpio/unexport;exit 0' TERM
EOF
exec /bin/sh
