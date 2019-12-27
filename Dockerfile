FROM ghost:latest

# config options
# https://github.com/TryGhost/Ghost-CLI/blob/master/lib/tasks/configure/options.js
# https://github.com/docker-library/ghost/issues/77#issuecomment-321247145

FROM ghost:latest
RUN ghost config url ${URL_SITE}
CMD ["node", "current/index.js"]
