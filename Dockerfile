FROM ghost:latest

RUN sed -i "s|http://localhost:2368|${URL}|g" /var/lib/ghost/config.development.json
RUN sed -i "s|http://localhost:2368|${URL}|g" /var/lib/ghost/config.production.json
