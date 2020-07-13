#!/usr/bin/env bash

main () {
  local words="${1//[^a-zA-Z\']/ }"
  local acronym=""

  for word in $words; do
    acronym+=${word:0:1}
  done

  echo "${acronym^^}"
}

main "$@"
