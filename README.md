# Home Assistant Addons – ChromaDB

This repository contains a custom addon for [ChromaDB](https://www.trychroma.com/), a powerful open-source vector database designed for local use in LLM and AI agent applications.

## 🚀 Addon: ChromaDB

Runs ChromaDB as a Home Assistant addon using the official Docker image `chromadb/chroma:latest`.

### ✅ Features

- Local vector store for LLM applications (e.g. CrewAI, n8n agents)
- Based on official image, minimal overhead
- Configurable startup parameters:
  - `persist_directory` – persistent storage location
  - `allow_reset` – allow full database reset via API
  - `anonymized_telemetry` – enable/disable usage statistics

### 🔧 Example configuration

```yaml
persist_directory: "/data/chroma"
allow_reset: false
anonymized_telemetry: false