FROM alpine
RUN  apk add --update nodejs npm
WORKDIR /usr/src/app
COPY package*.json . 
RUN npm install 
COPY . .
EXPOSE 3006
CMD ["node", "server.js"]