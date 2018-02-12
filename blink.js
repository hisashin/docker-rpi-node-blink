const fs = require('fs');

fs.writeFileSync('/sys/class/gpio/export', 2);
fs.writeFileSync('/sys/class/gpio/gpio2/direction', 'out');

var flag = 0;

function loop() {
  fs.writeFileSync('/sys/class/gpio/gpio2/value', flag);
  flag = flag ? 0 : 1;
  setTimeout(loop, 100);
}

loop();
