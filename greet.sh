#!/bin/bash

set -euo pipefail

echo "whats your name ?"
read name

echo " whats your role?"
read role

echo "welcome $name , your are learning bash as a $role"
echo "current time :$(date +%H:%M)"
