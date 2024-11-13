#!/bin/bash

function find-ruby-warnings() {
  local directory=${1:-.}

  echo "it's not returning msg, it's print to std"
  echo "require 'parallel'; Parallel.each(Dir.glob(\"**/*.rb\"), progress: 'checking') {|file| \`ruby -wc #{file}\`}"

  parallel "ruby -wc {}" ::: $(find $directory -name \*.rb) 1> /dev/null
}
