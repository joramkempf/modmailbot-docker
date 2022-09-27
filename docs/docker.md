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
    env_file:
      - ./.env
    ports:
      - ${MM_PORT:-8890}:${MM_PORT:-8890}

volumes:
  data:
```