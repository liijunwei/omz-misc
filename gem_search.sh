#!/usr/bin/env bash

function gem-search-local() {
  gem list -l |
  fzf |
  awk '{print $1}' |
  xargs -I {} open "https://rubygems.org/search?query={}"
}
