#!/bin/bash
echo "Starting ChromaDB with:"
echo "Persist directory: $persist_directory"
echo "Allow reset: $allow_reset"
echo "Telemetry: $anonymized_telemetry"

chroma run \
  --persist-directory "$persist_directory" \
  --allow-reset "$allow_reset" \
  --anonymized-telemetry "$anonymized_telemetry"
