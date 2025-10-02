#!/bin/bash

# Script di setup e avvio per Codex Templaris

echo "🏰 Codex Templaris - Setup Script"
echo "=================================="
echo ""

# Verifica Docker
if ! command -v docker &> /dev/null; then
    echo "❌ Docker non trovato. Installalo prima di procedere."
    exit 1
fi

echo "✅ Docker trovato"

# Verifica Docker Compose
if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose non trovato. Installalo prima di procedere."
    exit 1
fi

echo "✅ Docker Compose trovato"

# Verifica/Crea network
echo ""
echo "📡 Controllo network plv_network..."
if ! docker network ls | grep -q plv_network; then
    echo "⚙️  Creazione network plv_network..."
    docker network create plv_network
    echo "✅ Network creata"
else
    echo "✅ Network già esistente"
fi

# Build
echo ""
echo "🔨 Build dell'immagine Docker..."
docker-compose build

if [ $? -eq 0 ]; then
    echo "✅ Build completata con successo"
else
    echo "❌ Errore durante la build"
    exit 1
fi

# Avvio
echo ""
echo "🚀 Avvio del container..."
docker-compose up -d

if [ $? -eq 0 ]; then
    echo "✅ Container avviato con successo"
    echo ""
    echo "🌐 Accedi all'applicazione:"
    echo "   👉 http://localhost:8080"
    echo ""
    echo "📋 Comandi utili:"
    echo "   - Logs:     docker-compose logs -f"
    echo "   - Stop:     docker-compose down"
    echo "   - Restart:  docker-compose restart"
    echo ""
    echo "⚔️  Buon viaggio nella ricerca del Codex Veteris Lucis!"
else
    echo "❌ Errore durante l'avvio"
    exit 1
fi
