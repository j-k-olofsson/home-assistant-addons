# Home Assistant Addons – ChromaDB

Detta repository innehåller en Home Assistant-addon för att köra [ChromaDB](https://www.trychroma.com/) – en vektor-databas för LLM-applikationer som t.ex. CrewAI eller n8n-agentflöden.

## 🔧 Funktioner

- Körs som addon i Home Assistant
- Bygger på officiell `chromadb/chroma:latest`
- Stöd för konfig:
  - `persist_directory` – var data sparas
  - `allow_reset` – tillåter återställning av vektordatabasen
  - `anonymized_telemetry` – styr om statistik skickas till Chroma

## 📦 Installation

1. Gå till **Inställningar → Tillägg → Tilläggsförvaret** i Home Assistant.
2. Klicka **“+ Lägg till”**
3. Lägg till denna URL:
