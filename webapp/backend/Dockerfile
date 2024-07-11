FROM node:16.20.2-alpine3.18
WORKDIR /node_app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080
CMD ["node", "server.js"]
