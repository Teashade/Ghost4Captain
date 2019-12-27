FROM ghost:latest

ARG URL_SITE
ARG URL_ADMIN
ARG MAIL_NAME
ARG MAIL_HOST
ARG MAIL_USER
ARG MAIL_PASS

#URL

RUN if [[ -z "${URL_SITE}"] ]; then ghost config --url $URL_SITE; fi
RUN if [[ -z "${URL_ADMIN}"] ]; then ghost config --admin-url $URL_ADMIN; fi

# MAIL
RUN ghost config --mail SMTP
RUN ghost config --mailservice $MAIL_NAME
RUN ghost config --mailuser $MAIL_USER
RUN ghost config --mailpass $MAIL_PASS
RUN ghost config --mailhost $MAIL_HOST
RUN ghost config --mailport 465

CMD ["node", "current/index.js"]
