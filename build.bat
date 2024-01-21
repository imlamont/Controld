@echo off

SET ARG=%1

IF "%ARG%"=="docker" (
    cd server
    START /B /WAIT cmd /c "npm run build"
    cd ..
    START /B /WAIT cmd /c "docker-compose build"
) ELSE (
    cd server
    START /B /WAIT cmd /c "npm run build"
    cd ..
)
