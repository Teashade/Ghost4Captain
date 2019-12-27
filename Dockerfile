FROM ghost:latest

ARG URL

RUN ghost config url $URL
RUN ghost config mail__transport SMTP
RUN ghost config mail__options__service Mailgun

CMD ["node", "current/index.js"]
