#!/usr/bin/env bash

function gem-search-local() {
  local gemname=$(gem list -l | fzf | awk '{print $1}')
  open "https://rubygems.org/search?query=$gemname"
}
