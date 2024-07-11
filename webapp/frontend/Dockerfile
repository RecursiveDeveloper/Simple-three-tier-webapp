FROM node:16.20.2-alpine3.18
WORKDIR /angular_app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm install -g @angular/cli@16.2.14

EXPOSE 8081
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "8081"]
