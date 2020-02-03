#!/bin/bash
while ! nc -z -v -w30 db 5432; do sleep 1
done
knex migrate:latest
knex seed:run
node server.js