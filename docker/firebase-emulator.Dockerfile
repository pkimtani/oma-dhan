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

CMD ["firebase", "emulators:start", "--import=data/", "--export-on-exit"]