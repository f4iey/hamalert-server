FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY config_clean.js config.js
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]