#! /usr/bin/env bash

DIR="teste"
LOCKFILE="$DIR/lockfile.lock"

if [[  -e $LOCKFILE ]]; then
    echo "Lockfile já existe"
    trap "rm $LOCKFILE" EXIT
    exit 1
else
    echo "teste" >> $LOCKFILE
fi 

echo "Executando código...."
sleep 5

#rm -rf $LOCKFILE