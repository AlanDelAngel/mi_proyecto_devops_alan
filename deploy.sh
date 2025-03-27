#!/bin/bash

echo "Iniciando despliegue de archivos a S3..."

BUCKET_NAME="mi-bucket-devops-alan"
SOURCE_DIR="src"
# Sincronizar archivos con S3
aws s3 sync "$SOURCE_DIR" "s3://$BUCKET_NAME" --delete

echo "Despliegue completado con éxito."

