FROM minio/minio:latest

# Set environment variables with explicit values
ENV MINIO_ROOT_USER=chatwoot
ENV MINIO_ROOT_PASSWORD=qaz11wsx22edc33rv55
ENV MINIO_SERVER_URL=https://dev-minio-custom.mev2a6.easypanel.host
ENV MINIO_BROWSER_REDIRECT_URL=https://dev-minio-custom.mev2a6.easypanel.host

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Create MinIO data directory
RUN mkdir -p /data/minio

# Expose ports
EXPOSE 9000 9001

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:9000/minio/health/live || exit 1

# Use custom entrypoint
ENTRYPOINT ["/entrypoint.sh"]