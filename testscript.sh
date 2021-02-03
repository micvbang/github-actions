#!/usr/bin/env bash

some_function() {
    TIMESTAMP=$(date +"%s%N")
    echo "some_function: $TIMESTAMP"
    export TIMESTAMP
}

main() {
  local res=0
  one="$1"
  two="$2"
  three="$3"
  echo "input variables: $one $two $three"

  MAIN_TIMESTAMP=$(date +"%s%N")
  echo "main_timestamp: $MAIN_TIMESTAMP"

  some_function

  echo "main: $TIMESTAMP"

  exit $res
}

main "$@"
