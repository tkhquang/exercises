#!/usr/bin/env bash

main () {
  if [ $# -ne 1 ] || [[ ! "$1" =~ ^-?[0-9]+$ ]]; then
    echo "Usage: leap.sh <year>"
    exit 1
  fi

  local year="$1"
  local is_leap=0

  if [ $(("$year" % 4)) -eq 0 ] && [ $(("$year" % 100)) -ne 0 ] || [ $(("$year" % 400)) -eq 0 ]; then
    is_leap=1
  fi

  [ $is_leap -eq 0 ] && echo "false" || echo "true" 
}

main "$@"
