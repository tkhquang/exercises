#!/usr/bin/env bash

main () {
  local number=${1//[[:space:]]}

  if [[ "$number" =~ ^[0-9]{2,}$ ]]; then
    local -i len=${#number}
    local -i sum=0
    local -i digit

    for (( i=1; i < len+1; i++ )); do
      digit=${number:len-i:1}
      (( i%2 == 0 )) && (( digit*=2 ))
      (( digit > 9 )) && (( digit-=9 ))
      (( sum+=digit ))
    done

    (( sum%10 == 0 )) && { echo "true"; exit 0; }
  fi

  echo "false"
}

main "$@"
