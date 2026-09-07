#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n'

DATE=$(date +'%Y_%m_%d')

is_directory_defined(){
  if [ "$1" = '' ]; then
    echo "FIRST_DIRECTORY must to be defined"
    exit 1
  fi

  if [ "$2" = '' ]; then
    echo "SECOND_DIRECTORY must to be defined"
    exit 1
  fi
}

list_files_directory(){

   for FILE in ./"$1"/*;
   do
	   FILE_LAST_UPDATE="$( find "$FILE" -mmin +30)"
   	if [[ "${FILE##*.}" = "log" && "$FILE_LAST_UPDATE" ]]; then
		FILE_WITHOUT_PATH="${FILE##*/}"
		NEW_FILE="${FILE_WITHOUT_PATH%.*}_$DATE.tar.zip"
		#printf '%s\n' ".$1/$NEW_FILE"
		tar -zcf "$NEW_FILE" "$FILE"
		mv "$NEW_FILE" ./"$2"
    	fi
   done
}

do_logs_backup(){
  is_directory_defined "${1:-}" "${2:-}"
  FIRST_DIRECTORY="$1"
  SECOND_DIRECTORY="$2"

  list_files_directory "$FIRST_DIRECTORY" "$SECOND_DIRECTORY"
}

trap "" SIGINT

do_logs_backup "${1:-}" "${2:-}"
