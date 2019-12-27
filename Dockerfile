FROM ghost:latest

ARG URL

RUN ghost config url http://URL
CMD ["node", "current/index.js"]
