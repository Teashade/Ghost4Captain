FROM ghost:3.31.5

# config options
# https://github.com/TryGhost/Ghost-CLI/blob/master/lib/tasks/configure/options.js
# https://github.com/docker-library/ghost/issues/77#issuecomment-321247145

ARG URL_SITE
ARG URL_ADMIN
ARG MAIL_NAME
ARG MAIL_HOST
ARG MAIL_PASS

RUN ghost config url $URL_SITE
RUN ghost config adminUrl $URL_ADMIN

RUN ghost config mail SMTP
RUN ghost config mailport 465
RUN ghost config mail $MAIL_NAME
RUN ghost config mailservice $MAIL_HOST
RUN ghost config mailuser $MAIL_USER
RUN ghost config mailpass $MAIL_PASS

CMD ["node", "current/index.js"]
