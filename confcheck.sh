#!/bin/bash

function Usage () {
  echo "Usage: $0 {Search File} {Config1} ({Config2})"
  exit 1
}

# 引数は2個以上指定する
if [ $# -lt 2 ] ; then
  Usage
fi

File1=$2
File2=$3

# 第4オクテットはバラバラのため第3オクテットまで切り出し
Address=$(cut -d '.' -f 1,2,3  $1)

function Confsearch () {
  echo "File: ${1##*/}"
  grep ${a} $1
  if [ $? == 1 ] ; then
    echo "Not Configured"
  fi
  return 0
}

for a in ${Address}
  do 
    echo -e "---Search: ${a}---"
    Confsearch ${File1}

    # 引数が2個あったら2個め出力
    if [ $# == 3 ]; then
      Confsearch ${File2}
    fi

    echo -e "\n"
  done

