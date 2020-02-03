FROM node:alpine
COPY ./npm .
RUN apk add git
RUN npm install knex -g
RUN npm install
#RUN apt-get update
RUN apk add netcat-openbsd
COPY init.sh init.sh
ENV POSTSERV=postgres://postgres:postgres@db:5432/zelda_cookbook 
ENTRYPOINT [ "./init.sh" ]