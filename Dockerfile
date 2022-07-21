FROM node

RUN mkdir /usr/src/app
WORKDIR /usr/scr/app

ENV PATH /usr/src/app/node_modules/ .bin:$PATH
COPY package*.json /usr/scr/app

RUN npm install

COPY /usr/scr/app 

EXPOSE 4000

CMD ['npm',"start"]