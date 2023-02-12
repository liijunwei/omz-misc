#!/bin/bash

function find-ruby-warnings() {
  local directory=${1:-.}

  parallel "ruby -wc {}" ::: $(find $directory -name \*.rb) 1> /dev/null
}
