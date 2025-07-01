#!/command/with-contenv bash
echo "Starting ChromaDB (official entrypoint)..."
exec chroma run --host 0.0.0.0 --port 8000 --path /data
