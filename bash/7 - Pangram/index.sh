#!/usr/bin/env bash

main () {
  # To lowercase
  local setence="${1,,}"

  # Is Empty
  if [[ -z "$setence" ]]; then
    echo "false"
    exit 0
  fi

  # Loop through the alphabet
  for letter in {a..z}; do
    if [[ -n "${setence##*$letter*}" ]]; then
      echo "false"
      exit 0
    fi
  done

  echo "true"
}

main "$@"
