#!/bin/bash

function note_cat() {
  local keyword="$1"
  ag ${keyword:-$(date "+%Y/%m/%d")} $NOTEBOOK_ROOT/notes/expense-note.csv
}
