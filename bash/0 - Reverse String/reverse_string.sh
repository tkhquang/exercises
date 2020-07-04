#!/usr/bin/env bash

main () {
  local copy=$@
  local rev=""

  for(( i=0 ; i<${#copy} ; i++ )); do
    rev="${copy:$i:1}$rev"
  done

  echo "$rev"
}

main "$@"
