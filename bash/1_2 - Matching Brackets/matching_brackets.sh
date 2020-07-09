#!/usr/bin/env bash

main () {
  local string="$1"
  local string_length="${#string}"
  local brackets=()

  for (( i=0; i < "$string_length"; i++)); do
    local letter="${string:i:1}"

    case "$letter" in
    '{')
      brackets+=('}')
      ;;
    '[')
      brackets+=(']')
      ;;
    '(')
      brackets+=(')')
      ;;
    '}' | ']' | ')')
      if [ ${#brackets} -eq 0 ]; then
        echo "false"
        exit 0
      fi

      local head="${brackets[-1]}"
      if [[ $head != "$letter" ]]; then
        echo "false"
        exit 0
      fi

      unset brackets[-1]
      ;;
    esac
  done

  [ ${#brackets} -eq 0 ] && echo "true" || echo "false"
}

main "$@"
