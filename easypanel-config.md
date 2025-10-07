# MinIO Configuration for Easypanel
# =================================

# Environment Variables Required:
# --------------------------------
# MINIO_ROOT_USER=chatwoot
# MINIO_ROOT_PASSWORD=qaz11wsx22edc33rv55
# MINIO_SERVER_URL=https://dev-minio-custom.mev2a6.easypanel.host

# Optional Environment Variables:
# --------------------------------
# MINIO_BROWSER_REDIRECT_URL=https://dev-minio-custom.mev2a6.easypanel.host
# MINIO_SERVER_URL=https://dev-minio-custom.mev2a6.easypanel.host
# MINIO_CONSOLE_ADDRESS=:9001
# MINIO_SERVER_ADDRESS=:9000

# Volumes Required:
# -----------------
# /data - MinIO data storage (persistent)
# /config - MinIO configuration (optional)

# Ports:
# ------
# 9000 - MinIO API
# 9001 - MinIO Console (Web UI)

# Health Check:
# -------------
# Endpoint: /minio/health/live
# Interval: 30s
# Timeout: 3s
# Retries: 3
