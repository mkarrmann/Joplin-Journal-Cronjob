FROM node:19-slim

RUN NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin && \
    ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin && \
    npm install -g ts-node typescript '@types/node'

COPY update-creds.ts .

ENTRYPOINT [ "ts-node" ]
