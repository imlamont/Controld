# syntax=docker/dockerfile:1

FROM mysql:latest

EXPOSE $DATABASE_LOCAL

COPY ./db-init.sql /docker-entrypoint-initdb.d/