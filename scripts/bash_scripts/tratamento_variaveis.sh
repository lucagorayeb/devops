#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n'

APP_ENV=''
DEPLOY_KEY=''

printf '%s\n' "${APP_ENV:-staging}"

printf '%s\n' "${DEPLOY_KEY:?Variable can not be empty.}" && exit 1
