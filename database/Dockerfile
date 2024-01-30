# syntax=docker/dockerfile:1

FROM mysql:latest

EXPOSE $DATABASE_LOCAL

COPY ./database-scema.sql /docker-entrypoint-initdb.d/