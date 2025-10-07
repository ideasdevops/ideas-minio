FROM bitnami/minio:2025.9.7

# Set environment variables
ENV MINIO_ROOT_USER=${MINIO_ROOT_USER:-admin}
ENV MINIO_ROOT_PASSWORD=${MINIO_ROOT_PASSWORD:-password123}
ENV MINIO_SERVER_URL=${MINIO_SERVER_URL:-http://localhost:9000}

# Create data directory
RUN mkdir -p /data

# Expose ports
EXPOSE 9000 9001

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:9000/minio/health/live || exit 1

# Start MinIO server
CMD ["minio", "server", "/data", "--console-address", ":9001"]