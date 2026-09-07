#! /usr/bin/env bash

set -euo pipefail

err() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $*" >&2
}

compact() {
  tar -zcf "$1.tar.zip" "$1"
  mv "$1.tar.zip" "$2"
}

DIRECTORY=$(mktemp -d)

echo "$DIRECTORY"

if ! compact "$1" "$DIRECTORY"; then
  err "Can not find directory"
  exit 1
fi

trap 'rm -rf $DIRECTORY' EXIT
trap 'rm -rf $DIRECTORY' SIGINT

exit