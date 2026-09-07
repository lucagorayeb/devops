#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n'

SERVICES=("auth-api" "payment-v2" "notification service" "frontend")

for SERVICE in "${SERVICES[@]}"
do
	printf '%s\n' "Restarting $SERVICE service"
done

SERVICES+=("Inventory")
printf '%s\n' "${SERVICES[@]}"
