#!/usr/bin/env bash

PLAIN="abcdefghijklmnopqrstuvwxyz"
CIPHER="zyxwvutsrqponmlkjihgfedcba"

encode () {
  local encoded=""

  for (( i=0; i<${#1}; i++ )); do
    char="${1:$i:1}"
    # Lowercase
    char="${char,,}"

    # Is number
    [[ ! -z "${char##*[!0-9]*}" ]] && {
      encoded+="$char"
      continue
    }

    # Cut anything after matched
    before="${PLAIN/$char*/}"

    encoded+="${CIPHER:${#before}:1}"
  done

  # Insert a space for every 5 chars
  encoded=$(echo "$encoded" | sed "s/.\{5\}/& /g;s/ $//")

  echo "$encoded"
}

decode () {
  local decoded=""

  for (( i=0; i<${#1}; i++ )); do
    char="${1:$i:1}"
    # Lowercase
    char="${char,,}"

    # Is number
    [[ ! -z "${char##*[!0-9]*}" ]] && {
      decoded+="$char"
      continue
    }

    # Cut anything after matched
    before="${CIPHER/$char*/}"

    decoded+="${PLAIN:${#before}:1}"
  done

  echo "$decoded"
}

main () {
  $1 "$2"
}

main "$@"
