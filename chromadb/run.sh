#!/usr/bin/env bashio
# shellcheck shell=bash

CONFIG_PATH=/data/options.json

persist_dir=$(bashio::config 'persist_directory')
allow_reset=$(bashio::config 'allow_reset')
telemetry=$(bashio::config 'anonymized_telemetry')

bashio::log.info "Starting ChromaDB with:"
bashio::log.info "Persist: $persist_dir"
bashio::log.info "Allow reset: $allow_reset"
bashio::log.info "Telemetry: $telemetry"

exec chroma run \
  --persist-directory "$persist_dir" \
  --allow-reset "$allow_reset" \
  --anonymized-telemetry "$telemetry"