#! /usr/bin/env bash

set -euo pipefail

jq "[.departamento[].funcionarios[].nome, .departamento[].funcionarios[].cargo,
.departamento[].funcionarios[].salario] | select(.ativo == true)" treino.json

