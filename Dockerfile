FROM ghost:latest

# config options
# https://github.com/TryGhost/Ghost-CLI/blob/master/lib/tasks/configure/options.js

ADD ./config.sh /var/lib/ghost/config.sh
WORKDIR /var/lib/ghost
CMD ["config.sh" , "node current/index.js"]
