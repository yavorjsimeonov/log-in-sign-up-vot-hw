FROM amazoncorretto:17-alpine-jdk

MAINTAINER yavor
ENV LANG en_GB.UTF-8

RUN apk add --update ttf-dejavu && rm -rf /var/cache/apk/*


EXPOSE 80:80
COPY ./build/libs/employees-0.0.1-SNAPSHOT.jar employees-0.0.1.jar
ENTRYPOINT ["java","-jar","employees-0.0.1.jar","--spring.profiles.active=default","--server.port=80"]