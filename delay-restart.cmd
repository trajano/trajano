@echo off
timeout /t 120
docker-compose down && docker-compose up -d
