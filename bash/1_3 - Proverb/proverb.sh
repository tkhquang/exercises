#!/usr/bin/env bash

main () {
  local args=("$@")
  local result=""

  for (( i = 0; i < $#; i++ )); do
    if [ "$i" -lt $(($# - 1)) ]; then
      result+="For want of a ${args[$i]} the ${args[$i + 1]} was lost.\n"
    else
      result+="And all for the want of a ${args[0]}."
    fi
  done

  echo -e "$result"
}

main "$@"
