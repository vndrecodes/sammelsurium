#!/bin/bash

ALL=false
VERBOSE=false

usage() {
  cat << EOF

Usage: usage_options.sh [-h] [-v] [-a]

-h, --help    : Print this help message
-v, --verbose : Increase verbosity
-a, --all     : All options

EOF

}

for i in "$@"; do
  case $i in
    --help|-h)
      usage
      exit 1
      ;;
    --all|-a)
      ALL=true
      shift
      ;;
    --verbose|-v)
      VERBOSE=true
      shift
      ;;
    *)
      usage
      exit 1
      ;;
  esac
done

echo "all $ALL verbose $VERBOSE"
exit 0
