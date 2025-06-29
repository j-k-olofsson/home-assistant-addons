#!/usr/bin/with-contenv bashio

persist_dir=$(bashio::config 'persist_directory')
allow_reset=$(bashio::config 'allow_reset')
telemetry=$(bashio::config 'anonymized_telemetry')

bashio::log.info "Starting ChromaDB..."
exec chroma run \
  --persist-directory "$persist_dir" \
  --allow-reset "$allow_reset" \
  --anonymized-telemetry "$telemetry"