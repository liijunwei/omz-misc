#!/bin/bash

function rr() {
  local keyword=$1
  if [[ "" == "$keyword" ]]
  then
    bundle exec rails routes | fzf
  else
    bundle exec rails routes | fzf -q $keyword
  fi
}

