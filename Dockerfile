FROM ghost:latest

ARG URL

RUN ghost config url $URL
CMD ["node", "current/index.js"]
