FROM ghost:latest

# config options
# https://github.com/TryGhost/Ghost-CLI/blob/master/lib/tasks/configure/options.js

ARG URL_SITE="http://localhost:2368"
ARG MAIL_NAME
ARG MAIL_HOST
ARG MAIL_USER
ARG MAIL_PASS

#URL
RUN ghost config --url $URL_SITE
RUN ghost config --ip localhost

# MAIL
RUN ghost config --mail SMTP
RUN ghost config --mailservice $MAIL_NAME
RUN ghost config --mailuser $MAIL_USER
RUN ghost config --mailpass $MAIL_PASS
RUN ghost config --mailhost $MAIL_HOST
RUN ghost config --mailport 465

#WORKDIR /var/lib/ghost
#CMD ["node", "current/index.js"]
