FROM ghost:latest

# config options
# https://github.com/TryGhost/Ghost-CLI/blob/master/lib/tasks/configure/options.js

ARG URL="http://localhost:2368"

FROM ghost:latest
RUN ghost config url ${URL_SITE};
CMD ["node", "current/index.js"]
