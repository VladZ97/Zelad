FROM node
COPY ./npm .
RUN npm install knex -g
RUN npm install
RUN apt-get update
RUN apt-get -y install netcat
COPY init.sh init.sh
ENTRYPOINT [ "./init.sh" ]