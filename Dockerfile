FROM ghost:latest

ARG URL_SITE="http://localhost:2368"
ARG URL_ADMIN="http://localhost:2368"
ARG MAIL_NAME
ARG MAIL_HOST
ARG MAIL_USER
ARG MAIL_PASS

#URL
#RUN ghost config --url $URL_SITE
#RUN ghost config --admin-url $URL_ADMIN

# MAIL
#RUN ghost config --mail SMTP
#RUN ghost config --mailservice $MAIL_NAME
#RUN ghost config --mailuser $MAIL_USER
#RUN ghost config --mailpass $MAIL_PASS
#RUN ghost config --mailhost $MAIL_HOST
#RUN ghost config --mailport 465
EXPOSE 2368
CMD url=${URL_SITE} node current/index.js
