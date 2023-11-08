#!/bin/bash

# Certificado e diretório de certificados
CERT_PATH="/etc/nginx/ssl/live/"
CERT_FILE="fullchain.pem"
PERMISSIONS="0644"
DIRECTORY="/etc/nginx/ssl/live"

# Ajusta as permissões do arquivo do certificado
chmod $PERMISSIONS "$CERT_PATH/$WALL_APP_API_DOMAIN/$CERT_FILE"
chmod $PERMISSIONS "$CERT_PATH/$WALL_APP_DOMAIN/$CERT_FILE"

# Ajusta as permissões do diretório de certificados
find $DIRECTORY -type d -exec chmod 0755 {} \;
