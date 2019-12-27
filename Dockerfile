FROM ghost:latest

RUN ghost config url ${URL}
CMD ["node", "current/index.js"]
