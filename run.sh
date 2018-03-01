#!/bin/bash
exec ${COMMAND:-gpsd -n -N -G -D3 -S 2947 -F /var/run/gpsd.sock /dev/ttyUSB0}
