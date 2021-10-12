ARG PORT=3000
FROM node:alpine3.14
WORKDIR /app
COPY src/package.json .
RUN npm install
COPY src/main.js .
RUN apk update && \
    apk add gcompat
EXPOSE $PORT
CMD ["node", "main.js"]