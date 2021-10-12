FROM node:alpine3.14
WORKDIR /app
COPY src .
RUN npm install
RUN apk update && \
    apk add gcompat
EXPOSE 3000
CMD ["node", "main.js"]