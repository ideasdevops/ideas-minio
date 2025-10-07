#!/bin/bash

# MinIO Entrypoint Script
# =======================

# Set default values if not provided
export MINIO_ROOT_USER=${MINIO_ROOT_USER:-chatwoot}
export MINIO_ROOT_PASSWORD=${MINIO_ROOT_PASSWORD:-qaz11wsx22edc33rv55}

# Create data directory if it doesn't exist
mkdir -p /data/minio

# Set proper permissions
chmod 755 /data/minio

# Start MinIO server
exec minio server /data/minio --console-address ":9001"
