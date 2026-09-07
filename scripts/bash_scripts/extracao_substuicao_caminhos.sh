#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n'

LOG_PATH="/var/log/nginx/access_2026_08_15.log"

ONLY_PATH="${LOG_PATH%/*}"
printf '%s\n' "$ONLY_PATH"

FILE="${LOG_PATH##*/}"
printf '%s\n' "$FILE"

NEW_FILE="${LOG_PATH%log}gz"
printf '%s\n' "$NEW_FILE"

REMOVE_ACCESS_SUFIX="${FILE%%_*}"
printf '%s\n' "$REMOVE_ACCESS_SUFIX"
