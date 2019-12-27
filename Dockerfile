FROM ghost:latest

ARG URL_SITE
ARG URL_ADMIN
ARG MAIL_NAME Mailgun
ARG MAIL_HOST smtp.mailgun.org
ARG MAIL_USER postmaster@something.mailgun.org
ARG MAIL_PASS ****

#URL
RUN ghost config --url $URL_SITE
RUN ghost config --admin-url $URL_ADMIN

# MAIL
RUN ghost config --mail SMTP
RUN ghost config --mailservice $MAIL_NAME
RUN ghost config --mailuser $MAIL_USER
RUN ghost config --mailpass $MAIL_PASS
RUN ghost config --mailhost $MAIL_HOST
RUN ghost config --mailport 465

CMD ["node", "current/index.js"]
