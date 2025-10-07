#!/bin/bash

# MinIO Entrypoint Script
# =======================

echo "Starting MinIO with credentials:"
echo "MINIO_ROOT_USER: ${MINIO_ROOT_USER:-chatwoot}"
echo "MINIO_ROOT_PASSWORD: ${MINIO_ROOT_PASSWORD:-qaz11wsx22edc33rv55}"
echo "MINIO_SERVER_URL: ${MINIO_SERVER_URL}"
echo "MINIO_BROWSER_REDIRECT_URL: ${MINIO_BROWSER_REDIRECT_URL}"

# Set credentials explicitly
export MINIO_ROOT_USER=${MINIO_ROOT_USER:-chatwoot}
export MINIO_ROOT_PASSWORD=${MINIO_ROOT_PASSWORD:-qaz11wsx22edc33rv55}

# Create data directory if it doesn't exist
mkdir -p /data/minio

# Set proper permissions
chmod 755 /data/minio

# Start MinIO server with proper network configuration
echo "Starting MinIO server on ports 9000 and 9001..."
exec minio server /data/minio --console-address ":9001" --address ":9000"
