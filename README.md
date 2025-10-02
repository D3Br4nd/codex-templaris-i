# Codex Templaris - Narrazione Interattiva

Narrazione interattiva ambientata nell'universo di **CaTE 2026: I Cavalieri di Alabastro**.

## 📖 Storia

*Il Prezzo della Rivelazione* segue Marco Valenti, ricercatore di storia medievale, nel suo viaggio attraverso i segreti della Loggia Lumen Mentis e la ricerca del Codex Veteris Lucis - un manoscritto perduto di San Giovanni Evangelista contenente l'Apocalisse in forma non criptata.

## 🎮 Caratteristiche

- **3 Epiloghi distinti**: Buono (Eroico/Imperfetto), Neutrale, Malvagio
- **Sistema morale a 3 assi**: Integrità, Ambizione, Lealtà
- **55 passaggi narrativi** con scelte che contano
- **Design medievale/templare** con CSS personalizzato
- **Responsive** per desktop e mobile

## 🚀 Installazione e Avvio

### Prerequisiti
- Docker
- Docker Compose
- Network Docker `plv_network` già creata

### Creare la network (se non esiste)
```bash
docker network create plv_network
```

### Build e avvio
```bash
cd /Users/debrand/Desktop/tmp/CaTE2026/codex-templaris-i

# Build dell'immagine
docker-compose build

# Avvio del container
docker-compose up -d
```

### Verifica
```bash
# Controlla che il container sia attivo
docker ps | grep codex-templaris

# Visualizza i logs
docker-compose logs -f
```

### Accesso
Apri il browser e vai su: **http://localhost:8080**

## 🛑 Stop e rimozione

```bash
# Stop del container
docker-compose down

# Rimozione completa (inclusa immagine)
docker-compose down --rmi all
```

## 📁 Struttura File

```
codex-templaris-i/
├── index.html              # Applicazione completa (HTML+CSS+JS)
├── Dockerfile              # Configurazione container nginx
├── docker-compose.yml      # Orchestrazione Docker
├── OUTLINE_COMPLETO.md     # Outline narrativo completo (55 passaggi)
└── README.md               # Questo file
```

## 🎨 Asset (Opzionale)

Quando vorrai aggiungere asset multimediali:

```
assets/
├── images/
│   ├── bg_pergamena.jpg
│   ├── loggia_sala.jpg
│   ├── biblioteca.jpg
│   ├── patmos.jpg
│   ├── codex_page.jpg
│   └── croce_templare.png
└── audio/
    └── ambient_medieval.mp3
```

Decommentare nel `Dockerfile` la riga:
```dockerfile
COPY assets/ /usr/share/nginx/html/assets/
```

## 🔧 Configurazione

### Porta personalizzata
Modifica `docker-compose.yml`:
```yaml
ports:
  - "PORTA_DESIDERATA:80"
```

### Network diversa
Modifica `docker-compose.yml`:
```yaml
networks:
  nome_network_personalizzata:
    external: true
```

## 📝 Sistema di Gioco

### Tracking Morale
- **Integrità** (0-20): Scelte etiche e morali
- **Ambizione** (0-20): Sete di conoscenza e potere
- **Lealtà** (0-20): Fedeltà alla Loggia vs coscienza

### Determinazione Epilogo
- **Path Malvagio**: Lealtà ≥8 AND Integrità ≤5
- **Path Buono**: Integrità ≥10 AND Lealtà ≤4
- **Path Neutrale**: Tutti gli altri casi

## 🌟 Easter Eggs

- Cerca riferimenti ai veri Cavalieri di Alabastro
- Il twist finale del path malvagio
- L'ultima pagina del Codex (testamento di Giovanni)

## 📄 Licenza

Materiale promozionale per **CaTE 2026: I Cavalieri di Alabastro**.

## 👤 Autore

Creato per la campagna di marketing/hype di CaTE 2026.

---

**Buon viaggio nella ricerca del Codex Veteris Lucis! ⚔️**
