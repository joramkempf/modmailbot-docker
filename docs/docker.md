# Build Image
Clone Repo with Plugins
```
git clone https://github.com/joramkempf/modmailbot-docker.git
cd modmailbot-docker
git submodule init
git submodule update
```
Build the Docker Image
```
docker build . -t modmailbot-docker
```

# Run Container
```
# docker-compose.yml
version: "3.7"

services:
  modmailbot-docker:
    image: modmailbot-docker
    restart: unless-stopped
    volumes: 
      - data:/usr/modmailbot/
    ports:
      - ${MM_PORT:-8890}:${MM_PORT:-8890}
    environment:
      - MM_TOKEN=
      - MM_MAIN_SERVER_ID=
      - MM_INBOX_SERVER_ID=
      - MM_LOG_CHANNEL_ID=
      - MM_PREFIX=
      - MM_INBOX_SERVER_PERMISSION=
      - MM_STATUS=
      - MM_PORT=
      - MM_URL=http://127.0.0.1:
      - MM_PLUGINS=./plugins/CloseAddons/index.js||./plugins/EmbedMessages/embedMessages.js||./plugins/Help/index.js||./plugins/HexedHelp/help.js||./plugins/LogSearch/logsearch.js||./plugins/MMEmergencyLink/emergencyLink.js||./plugins/modmailbot-formatter/index.js||./plugins/Ping/ping.js||./plugins/ReactionThreads/reactionThreads.js||./plugins/replyPrefix/replyPrefix.js
      - MM_REACTION_THREADS_OWNER_ID=

volumes:
  data:
```