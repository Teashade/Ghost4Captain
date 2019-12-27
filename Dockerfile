FROM ghost:latest

# config options
# https://github.com/TryGhost/Ghost-CLI/blob/master/lib/tasks/configure/options.js

WORKDIR /var/lib/ghost
ADD ./config.sh .
CMD ["config.sh" , "node current/index.js"]
