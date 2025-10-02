# Usa nginx alpine per servire contenuti statici
FROM nginx:alpine

# Copia il file HTML nella directory di default di nginx
COPY index.html /usr/share/nginx/html/

# Copia la configurazione nginx personalizzata
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia asset se presenti (opzionale, per quando li aggiungerai)
# COPY assets/ /usr/share/nginx/html/assets/

# Esponi la porta 80
EXPOSE 80

# Comando di default (già configurato in nginx:alpine)
CMD ["nginx", "-g", "daemon off;"]
