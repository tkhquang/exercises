#!/usr/bin/env bash

main () {
  local -i sum=0

  local -i digit
  for (( i=0; i<${#1}; i++ )); do
    digit=${1:$i:1}

    sum+=$(( $digit ** ${#1} ))
  done

  (( $sum == $1 )) && echo "true" || echo "false"
}

main "$@"
