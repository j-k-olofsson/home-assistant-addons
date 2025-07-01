#!/command/with-contenv bash
echo "🟢 Starting full ChromaDB REST server via uvicorn..."
exec uvicorn chromadb.app:app --host 0.0.0.0 --port 8000 --log-level debug
