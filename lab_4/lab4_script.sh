#!/bin/bash
# Authors : Jordan Scheufele
# Date: 9/22/2020
sudo cp /var/log/syslog /home
egrep "error.*|Error.*|ERROR.*" /home/syslog | tee error_log_check.txt
mail -s "test" josc7153@colorado.edu < error_log_check.txt
