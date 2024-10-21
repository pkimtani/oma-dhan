####
# Credits: https://andreyka26.com/firebase-emulator-in-docker
####
FROM node:20-bullseye-slim

WORKDIR app

RUN apt update -y && apt install -y openjdk-11-jdk bash

RUN npm install -g firebase-tools

#TODO: enable this when you need support for functions
#COPY . .
#RUN npm --prefix ./functions install

# TODO: find a way to persist the firebase data
# one way: --import <export-directory> --export-on-exit <export-directory>
RUN echo '#!/bin/sh \n firebase emulators:start' > ./entrypoint.sh && \
    chmod +x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]