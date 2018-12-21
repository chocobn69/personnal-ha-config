#!/bin/sh
echo "cleaning " $1 " :: usage: cleanmqtt <host>"
HOST=$1
USER=$2
PASSWORD=$3
mosquitto_sub -h $HOST -t "#" -v -u $USER -P $PASSWORD | while read line _; do mosquitto_pub -h $HOST -P $PASSWORD -u $USER -t "$line" -r -n; done
