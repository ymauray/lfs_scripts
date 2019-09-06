#! /bin/bash

set -x
set -e
set -o pipefail

for script in $(ls temp.d/*.sh); do
	exec bash $script
done

