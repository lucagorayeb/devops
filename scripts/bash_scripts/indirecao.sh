#!/usr/bin/env bash

set -eou pipefail
IFS=$'\n'

DB_HOST_STAGING="db-staging.internal"
DB_HOST_PROD="db-prod.internal"
ENV="STAGING"

AWS_REGION="Americas/Porto_Velho"
AWS_ACCOUNT="lucagorayeb@gmail.com"
AWS_ROLE="job"

printf '%s\n' "${!AWS_*}"
printf '%s\n' ${!ENV}
