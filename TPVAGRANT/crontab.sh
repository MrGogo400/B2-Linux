#!/bin/bash

# Cron expression
cron="5	*	*	*	*	rsync --partial --progress --rsh=ssh /var/www/html/data vagrant@192.168.0.51:/var/www/html"
