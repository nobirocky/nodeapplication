FROM node:16

RUN mkdir /var/nodeapp/

WORKDIR /var/nodeapp/

COPY ./app/ .

RUN npm install

COPY . .

Expose 8080

CMD [ "node" , "app.js" ]
