#!/bin/bash

set -euo pipefail

name=$1

echo "hello, $name !, today is $(date +%A)"
echo "Your are running this from: $(pwd)"

