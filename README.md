[Github](https://github.com/hisashin/docker-rpi-node-blink), [DockerHub](https://hub.docker.com/r/hisashin/rpi-node-blink/)

* Setup Docker on Raspberry Pi
* Connect LED between GPIO2 and GND
* Run This Image
* Get error?

# Setup Docker on Raspberry Pi

Refer [my another project](https://github.com/hortinstein/node-dash-button)

# Connect LED

Between GPIO2 and GND. Not only LED but also registor should be applied.

# Run this Image

```
docker run -it --privileged --name rpi-node-blink hisashin/rpi-node-blink:latest
```

After a while, it will start blinking. Edit /blink.js to change intervals and more.

# Get error?

Shutdown sequence in /start.sh seems not working perfectly. Additionally run this command to release GPIO when you stop.

```
echo 2 > /sys/class/gpio/unexport
```
