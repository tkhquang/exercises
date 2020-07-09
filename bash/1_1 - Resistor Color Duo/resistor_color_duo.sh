#!/usr/bin/env bash

main () {
  declare -A bands=(
    ["black"]=0
    ["brown"]=1
    ["red"]=2
    ["orange"]=3
    ["yellow"]=4
    ["green"]=5
    ["blue"]=6
    ["violet"]=7
    ["grey"]=8
    ["white"]=9
  )
  
  local args=("$@")
  local result=""

  for (( i = 0; i < $#; i++ )); do
    if [ "$i" -ge 2 ]; then
      break
    fi
    
    local arg="${args[$i]}"
    local current="${bands[$arg]}"

    if [ -z "$current" ]; then
      echo "invalid color"
      exit 1
    fi

    result+="$current"
  done

  echo "$result"
}

main "$@"
