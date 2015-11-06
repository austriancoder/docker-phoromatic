#!/bin/bash

LOG_FILE=/var/log/phoromatic.log

while : ; do
  [[ -e "$LOG_FILE" ]] && break
  echo "Pausing until $LOG_FILE exists"
  sleep 1
done

tail -f /var/log/phoromatic.log
