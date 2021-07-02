FROM node:14

# set up dev user in container
ARG GID UID
RUN usermod -u $UID -g $GID node && \
# $(getent passwd node | cut -d: -f1) && \
    mkdir /app && \
    chown node -R /app
USER node

# copy/install deps, if not mounting app dir in the container
COPY package*.json /app
WORKDIR /app
RUN npm install
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]