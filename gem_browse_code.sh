#!/usr/bin/env bash

function gem-open-code() {
  local keyword=$1

  if [[ "" == "$keyword" ]]; then
    local gemname=$(gem list -l | fzf | awk '{print $1}')
  else
    local gemname=$(gem list -l | fzf -q $keyword | awk '{print $1}')
  fi

  $CORE_EDITOR $(bundle info $gemname --path)
}

