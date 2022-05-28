FROM alpine:latest

RUN apk add --no-cache nodejs
RUN apk add --no-cache npm
RUN apk add --no-cache ffmpeg

Workdir /app/audiobook-client
COPY audiobook-client .

RUN npm ci
RUN npm run build

Workdir /app/audiobook-server
COPY audiobook-server .

Run npm ci
Run npm run build

Run mv ../audiobook-client/dist/audiobook-client ./client

EXPOSE 8080

ENTRYPOINT ["npm", "run", "start:prod"]
