#!/bin/sh

env > /etc/environment

crond

tail -f /dev/null
