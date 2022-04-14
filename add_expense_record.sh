#!/bin/bash

# 注: 使用 dos2unix 去除 ^M
# echo 本身不会增加 ^M符号...

export NOTEBOOK_ROOT=$HOME/Documents/notebook

EXPENCE_WHAT_IM_THINKING="新年加油干少抱怨"
EXPENCE_NOTE_FILE_PATH="$NOTEBOOK_ROOT/notes/expense-note.csv"
EXPENCE_DATE_PATTERN="+%Y/%m/%d"
EXPENCE_CATEGORY_LIST=( "行" "住" "食" "生活" "学习" "浪费" "娱乐" "衣" "智商税" "投资" "其它" "还钱" "工资" "猫" "莫名其妙" )

function print_date_list {
  cat <<EOF
$(date -v-4d $EXPENCE_DATE_PATTERN)
$(date -v-3d $EXPENCE_DATE_PATTERN)
$(date -v-2d $EXPENCE_DATE_PATTERN)
$(date -v-1d $EXPENCE_DATE_PATTERN)
$(date -v-0d $EXPENCE_DATE_PATTERN)
EOF
}

function print_sepreate_line {
  echo "------------------------------------------------------------------------"
}

function expense_print_help {
  print_sepreate_line;
  echo "FUNCTION FILEPATH: $EXPENCE_NOTE_FILE_PATH"
  print_sepreate_line;
  echo "FUNCTION LOCATION: $(type add | awk '{print $NF}')"
  print_sepreate_line;
  echo "CATEGORY: $EXPENCE_CATEGORY_LIST"
  print_sepreate_line;
  echo "add $(date "+%Y/%m/%d") "早饭" 5.5 "食" "支出" "$EXPENCE_WHAT_IM_THINKING" ;" | tee /dev/tty | pbcopy
  print_sepreate_line;
  tail -5 $EXPENCE_NOTE_FILE_PATH
  print_sepreate_line;
}

function add {
  if [ $# -eq 0 ]; then
    expense_print_help;
    return 1;
  fi

  local date=$1
  local item=$2
  local price=$3
  local category=$4
  local expense_type=$5
  local note=$6

  echo "${date},${item},${price},${category},${expense_type},${note}" >> $EXPENCE_NOTE_FILE_PATH
  dos2unix $EXPENCE_NOTE_FILE_PATH >> /dev/null 2>&1
  print_sepreate_line;
  echo "$EXPENCE_NOTE_FILE_PATH"
  print_sepreate_line;
  tail -5 $EXPENCE_NOTE_FILE_PATH
  print_sepreate_line;
}
