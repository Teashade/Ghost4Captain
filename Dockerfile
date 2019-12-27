FROM ghost:latest

RUN ghost config url <yoururl>
CMD ["node", "current/index.js"]
