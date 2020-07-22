#!/usr/bin/env bash

main () {
  # Trim whitespaces
  shopt -s extglob
  local message=${1##+([[:space:]])}
  message=${message%%+([[:space:]])}

  local response=""

  local has_letters=$( [[ "${message^^}" =~ [A-Z] ]] && echo "true" || echo "false" )
  local is_shouting=$( [[ "$message" == "${message^^}" ]] && echo "true" || echo "false" )
  local is_question=$( [[ "${message: -1}" == "?" ]] && echo "true" || echo "false" )
  local is_empty=$( [[ -z "$message" ]] && echo "true" || echo "false" )

  if "$is_shouting" && "$has_letters"; then
    if "$is_question"; then
      response="Calm down, I know what I'm doing!"
    else
      response="Whoa, chill out!"
    fi
  elif "$is_question"; then
    response="Sure."
  elif "$is_empty"; then
    response="Fine. Be that way!"
  else
    response="Whatever."
  fi

  echo "$response"
}

main "$@"
