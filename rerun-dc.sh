#/bin/bash
docker-compose stop
docker-compose rm -f
docker image rm --force employees:1.0.0
gradle clean bootJar
docker-compose up -d