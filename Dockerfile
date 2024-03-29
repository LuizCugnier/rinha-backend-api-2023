FROM openjdk:17-jdk-alpine

ENV APP_NAME api-0.0.1-SNAPSHOT

COPY ./target/${APP_NAME}.jar /app/${APP_NAME}.jar
COPY nginx.conf /app

WORKDIR /app

CMD java -jar ${APP_NAME}.jar
