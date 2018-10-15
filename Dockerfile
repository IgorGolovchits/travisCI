FROM node:8.12.0
RUN mkdir /src
WORKDIR /src
COPY ./package.json /src/package.json
COPY ./package-lock.json /src/package-lock.json
COPY ./poc /src/poc
RUN npm install
COPY . /app
CMD node /src/poc/authentication/server.js
