#!/bin/bash

# Plugin entry
# _omz_misc_path=$(dirname $(realpath $BASH_SOURCE)) # on linux
_omz_misc_path="$(dirname -- $0)" # on macos

for f in $(ls $_omz_misc_path/*.sh); do
  source $f;
done

