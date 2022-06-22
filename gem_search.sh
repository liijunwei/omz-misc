#!/usr/bin/env bash

alias gem-search-local=" gem list -l | awk '{print \$1}' | fzf | xargs -I {} open \"https://rubygems.org/search?query={}\""
alias gem-search-remote="gem list -r | awk '{print \$1}' | fzf | xargs -I {} open \"https://rubygems.org/search?query={}\""

