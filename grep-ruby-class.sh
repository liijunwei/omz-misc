#!/bin/bash

# grep namespaced ruby classes
# e.g. grep-ruby-class RuboCop::Cop

function grep-ruby-class() {
  local keyword=$1
  local top_level_namespace=$(echo $keyword | awk -F '::' '{print $1}')
  local second_level_namespace=$(echo $keyword | awk -F '::' '{print $2}')

  ag "module\s+$top_level_namespace\s+(class|module)\s$second_level_namespace" -l
}
