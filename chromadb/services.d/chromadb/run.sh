#!/command/with-contenv bash

echo "🟢 Starting full ChromaDB REST server via uvicorn..."

# Ensure default if not set
CHROMA_DB_DIR=${CHROMA_DB_DIR:-/data}

# Optional: show config
echo "📁 Using DB directory: $CHROMA_DB_DIR"
echo "🌐 Listening on port: ${CHROMA_SERVER_HTTP_PORT:-8000}"

exec uvicorn chromadb.app:app \
  --host 0.0.0.0 \
  --port 8000 \
  --log-config chromadb/log_config.yml \
  --proxy-headers \
  --timeout-keep-alive 30
