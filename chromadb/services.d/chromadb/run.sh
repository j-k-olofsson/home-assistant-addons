#!/command/with-contenv bash

echo "🟢 Starting full ChromaDB REST server via uvicorn..."

CHROMA_DB_DIR=${CHROMA_DB_DIR:-/data}
PORT_INT=${CHROMA_SERVER_HTTP_PORT:-8000}

# Rensa eventuell citattecken eller newline
PORT_INT=$(echo "$PORT_INT" | tr -d '"\r\n')

echo "📁 Using DB directory: $CHROMA_DB_DIR"
echo "🌐 Listening on port: $PORT_INT"

exec uvicorn chromadb.app:app \
  --host 0.0.0.0 \
  --port "$PORT_INT" \
  --log-config chromadb/log_config.yml \
  --proxy-headers \
  --timeout-keep-alive 30
