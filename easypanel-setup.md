# Configuración para Easypanel - MinIO Custom
# ===========================================

## Variables de Entorno Requeridas:
# ----------------------------------
MINIO_ROOT_USER=chatwoot
MINIO_ROOT_PASSWORD=qaz11wsx22edc33rv55
MINIO_SERVER_URL=https://dev-minio-custom.mev2a6.easypanel.host
MINIO_BROWSER_REDIRECT_URL=https://dev-minio-custom.mev2a6.easypanel.host

## Configuración de Puertos:
# --------------------------
# Puerto 9000: MinIO API (S3 compatible)
# Puerto 9001: MinIO Console (Web UI)

## Configuración de Dominios en Easypanel:
# ----------------------------------------
# Dominio 1: https://dev-minio-custom.mev2a6.easypanel.host/ → http://dev_minio-custom:9001/
# Dominio 2: https://dev-minio-custom.mev2a7.easypanel.host/ → http://dev_minio-custom:9000/

## Volúmenes:
# -----------
# /data - Persistent Volume para datos de MinIO

## Health Check:
# --------------
# Endpoint: /minio/health/live
# Puerto: 9000

## Troubleshooting:
# -----------------
# Si el servidor no responde:
# 1. Verificar que los puertos 9000 y 9001 estén expuestos
# 2. Verificar que el volumen /data esté montado correctamente
# 3. Revisar los logs del contenedor para errores
# 4. Verificar que las variables de entorno estén configuradas
