#!/bin/bash

# decimal to binary
function toBinary() {
  local decimal=$1;
  echo "obase=2 ; $decimal" | bc
}

# binary to decimal
function toDecimal() {
  local binary=$1;
  echo $((2#$binary))
}

function binary2decimal() {
  if [ $# -eq 0 ]; then
    echo "example";
    echo "binary2decimal 10111110";
    echo "190";
    return 1;
  fi

  local binary=$1;

  for i in $(echo ${binary} | tr '.' ' '); do toDecimal $i; done | awk '{printf "." $1}' | cut -c 2-;
}

function ipv4binary() {
  if [ $# -eq 0 ]; then
    echo "example";
    echo "ip_2_binary 192.168.31.178";
    echo "11000000.10101000.00011111.10110010";
    return 1;
  fi

  local ip=$1;

  for i in $(echo ${ip} | tr '.' ' '); do toBinary $i; done | awk '{printf ".%08d", $1}' | cut -c 2-;
}
