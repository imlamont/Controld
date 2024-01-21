@echo off

SET WEBSERVER_LOCAL=8000
SET WEBSERVER_DOCKER=8000
SET DATABASE_LOCAL=3306
SET DATABASE_DOCKER=3306

SET ARG=%1
IF "%ARG%"=="docker" (
    SET DOCKER=true
    docker-compose up -d
) else (
    SET DOCKER=false
    cd server
    START /B /WAIT cmd /c "npm run start"
    cd ..
)