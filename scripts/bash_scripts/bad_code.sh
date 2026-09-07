#!/bin/bash

set -euo pipefail

# Código Vulnerável / Frágil:
files=$(ls /tmp/data/*.txt)
for f in $files; do
 echo "Processando arquivo: $f"
 cat "$f" | grep "ERROR" > /dev/null
 if [ "$MYCMD" -eq 0 ]; then
 cp "$f" /tmp/errors/
 fi
done