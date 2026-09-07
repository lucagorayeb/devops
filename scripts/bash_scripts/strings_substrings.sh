#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n'

TAG="v2.4.1-production-build982"

printf '%s\n' "${TAG^^}"
printf '%s\n' "${TAG#v}"
printf '%s\n' "${TAG:0:6}"

