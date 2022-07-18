#!/usr/bin/env bash

function gem-search-local() {
  gem list -l |
  awk '{print $1}' |
  fzf |
  xargs -I {} open "https://rubygems.org/search?query={}"
}
