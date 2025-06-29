#!/usr/bin/with-contenv bashio

PORT=$(bashio::config 'port')
DISABLE_TELEMETRY=$(bashio::config 'disable_telemetry')

CMD="uvicorn chromadb.app:app --workers 1 --host 0.0.0.0 --port ${PORT} --proxy-headers --log-config chromadb/log_config.yml --timeout-keep-alive 30"

if bashio::var.true "$DISABLE_TELEMETRY"; then
  export CHROMA_TELEMETRY_ENABLED=false
fi

exec $CMD
