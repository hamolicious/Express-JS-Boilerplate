FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install
# RUN npm ci --only=production

COPY ./src ./src

EXPOSE 3000
CMD [ "node", "./src/app.js" ]
