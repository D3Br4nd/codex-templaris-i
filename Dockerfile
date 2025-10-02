# Usa nginx alpine per servire contenuti statici
FROM nginx:alpine

# Crea la directory cti
RUN mkdir -p /usr/share/nginx/html/cti

# Copia il file HTML nella sottocartella cti
COPY index.html /usr/share/nginx/html/cti/

# Copia asset se presenti (opzionale, per quando li aggiungerai)
# COPY assets/ /usr/share/nginx/html/cti/assets/cti/

# Esponi la porta 80
EXPOSE 80

# Comando di default (già configurato in nginx:alpine)
CMD ["nginx", "-g", "daemon off;"]
