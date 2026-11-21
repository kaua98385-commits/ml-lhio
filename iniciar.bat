@echo off
title MERIDIANO
where node >nul 2>nul || (echo Instale o Node.js em https://nodejs.org e execute de novo. & pause & exit /b)
start "" http://localhost:8080
node tools\serve.mjs 8080
