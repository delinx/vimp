#!/bin/bash
cd "$(dirname "$0")"
pwd
./bin-linux/nvim-linux64/bin/nvim -u config/init.lua "$@"
cd -