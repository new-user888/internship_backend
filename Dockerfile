###################
# BUILD FOR PRODUCTION
###################

FROM openjdk:18-jdk-alpine3.14 as builder

RUN apk add --no-cache \
    maven

ARG S3_ACCESS_KEY
ARG S3_SECRET_KEY
ARG S3_REGION

ARG BUCKET
ARG EMAIL_USER
ARG EMAIL_PASSWORD
ARG DB_LOGIN
ARG DB_PASSWORD
ARG DB_URL

ENV S3_ACCESS_KEY=$S3_ACCESS_KEY
ENV S3_SECRET_KEY=$S3_SECRET_KEY
ENV S3_REGION=$S3_REGION

ENV BUCKET=$BUCKET
ENV EMAIL_USER=$EMAIL_USER
ENV EMAIL_PASSWORD=$EMAIL_PASSWORD
ENV DB_LOGIN=$DB_LOGIN
ENV DB_PASSWORD=$DB_PASSWORD
ENV DB_URL=$DB_URL

WORKDIR /app

COPY . .

RUN mvn clean package

###################
# PRODUCTION
###################

FROM openjdk:18-jdk-alpine3.14 as production

COPY --from=builder /app/target/demo-0.5.0-SNAPSHOT.jar /app.jar

ENTRYPOINT [ "java","-jar","/app.jar" ]

EXPOSE 8080
