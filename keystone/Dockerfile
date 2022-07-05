ARG NODE_VERSION=16.13
ARG DUMB_INIT_VERSION=1.2.2

# Build container
FROM node:${NODE_VERSION}-alpine AS build
ARG DUMB_INIT_VERSION

WORKDIR /usr/local/app

RUN apk add --no-cache build-base python2 yarn && \
    wget -O dumb-init -q https://github.com/Yelp/dumb-init/releases/download/v${DUMB_INIT_VERSION}/dumb-init_${DUMB_INIT_VERSION}_amd64 && \
    chmod +x dumb-init
ADD . /usr/local/app

RUN yarn install --legacy-peer-deps && yarn build

RUN ls -al

# Runtime container
FROM node:${NODE_VERSION}-alpine

WORKDIR /usr/local/app

COPY --from=build /usr/local/app /usr/local/app

RUN ls -al

EXPOSE 3000
CMD ["./dumb-init", "npm", "run", "start"]
