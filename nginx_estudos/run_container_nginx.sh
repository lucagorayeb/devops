#!/usr/bin/env bash
# -----------------------------------------------------
# Program    : run_container_nginx.sh
# Description:
# Version    : 0.1
# Author     : Luca Gorayeb <lucagorayeb@gmail.com>
# Date       : 02/06/2026
# Lincence   : GNU/GPL v3.0
# -----------------------------------------------------
# Use:
# -----------------------------------------------------

docker run  --rm --name estudando-nginx -p 8080:80 -d -v nginx                    
