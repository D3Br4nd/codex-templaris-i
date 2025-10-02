# Codex Templaris - Narrazione Interattiva

Narrazione interattiva ambientata nell'universo di **CaTE 2026: I Cavalieri di Alabastro**.

## 📖 Storia

*IL PREZZO DELLA CONOSCENZA* segue Marco Valenti, ricercatore di storia medievale, nel suo viaggio attraverso i segreti della Loggia Lumen Mentis e la ricerca del Codex Veteris Lucis - un manoscritto perduto di San Giovanni Evangelista contenente l'Apocalisse in forma non criptata.

## 🎮 Caratteristiche

- **3 Epiloghi distinti**: Buono (Eroico/Imperfetto), Neutrale, Malvagio
- **Sistema morale a 3 assi**: Integrità, Ambizione, Lealtà
- **55 passaggi narrativi** con scelte che contano
- **Design medievale/templare** con CSS personalizzato
- **Responsive** per desktop e mobile

## 🚀 Avvio Rapido

### Build e avvio
```bash
# Vai nella directory del progetto
cd codex-templaris-i

# Build dell'immagine
docker-compose build

# Avvio del container
docker-compose up -d
```

### Accesso
Apri il browser e vai su: **http://localhost:8080**

### Verifica
```bash
# Controlla che il container sia attivo
docker ps | grep codex-templaris

# Visualizza i logs
docker-compose logs -f
```

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
├── README.md               # Questo file
└── assets/                 # Asset opzionali (immagini/audio)
    ├── images/
    └── audio/
```

## 🎨 Asset (Opzionale)

Gli asset sono opzionali. L'applicazione funziona perfettamente senza.

Quando vorrai aggiungerli:

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

Quindi decommenta nel `Dockerfile` la riga:
```dockerfile
COPY assets/ /usr/share/nginx/html/assets/
```

E rebuilda: `docker-compose build`

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
  - Sottovariante Eroico: con confessione alle autorità
  - Sottovariante Imperfetto: fuga senza confessione
- **Path Neutrale**: Tutti gli altri casi

### Scelte Cruciali
Alcune scelte pesano più di altre nella determinazione del path finale:
- **Passaggio 8**: Risposta sul perché i Templari furono soppressi
- **Passaggio 17**: Reazione al Progetto Eschaton
- **Passaggio 21**: Avvertimento di Fra Giovanni
- **Passaggio 32**: Piano di assassinio dell'Anticristo (BIVIO CRITICO)
- **Passaggio 36**: Scelta finale che determina il path

## 🌟 Easter Eggs e Dettagli Narrativi

- **Il Codex è un test**: L'ultima pagina rivela che San Giovanni lo scrisse per testare chi avrebbe avuto fede vs chi avrebbe cercato il controllo
- **Twist del path malvagio**: Marco cerca di prevenire l'Anticristo ma scopre di essere diventato lui stesso l'Anticristo
- **I Cavalieri di Alabastro**: Ordine di custodi (non guerrieri) che proteggevano il Codex dal 1291 al 1987
- **Fra Giovanni**: Ultimo erede spirituale dei Cavalieri, nipote dell'ultimo custode
- **Profezie verificate**: Il Codex predice accuratamente Peste Nera (1347), scoperta dell'America (1492), Prima Guerra Mondiale (1914)

## 🎯 Obiettivi Narrativi

Questa storia serve come:
1. **Materiale promozionale** per generare hype verso CaTE 2026
2. **Esplorazione tematica** del prezzo della conoscenza proibita
3. **Setup narrativo** per i temi principali del gioco (fede vs controllo, custodire vs possedere)
4. **Spin-off character**: Marco Valenti come figura che ha imparato la lezione prima degli eventi del gioco principale

## 📄 Licenza

Materiale promozionale per **CaTE 2026: I Cavalieri di Alabastro**.

---

**Buon viaggio nella ricerca del Codex Veteris Lucis! ⚔️**
