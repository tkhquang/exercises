#!/usr/bin/env bash

main () {
  case "$1" in
    total)
      # printf '%u' $((0xffffffffffffffff))
      echo "2 ^ 64 - 1" | bc
    ;;
    [1-9]| [1-5][0-9]| 6[0-4])
      # printf '%u' $((1 << $1 - 1))
      echo "2 ^ ($1 - 1)" | bc
    ;;
    *)
      echo "Error: invalid input"
      exit 1
    ;;
  esac
}

main "$@"
