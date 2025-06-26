FROM node:20

WORKDIR usr/src/app

COPY package*.json ./
RUN npm install --prefix
RUN npm install pm2 -g

COPY . .
EXPOSE 8000

CMD ["pm2-runtime", "index.js"]