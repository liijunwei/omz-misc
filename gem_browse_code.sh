#!/usr/bin/env bash

function gem-open-code() {
  local gemname=$(gem list -l | fzf | awk '{print $1}')
  $CORE_EDITOR $(bundle info $gemname --path)
}

