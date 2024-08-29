# ProvedCode

![main_page](images/Pasted%20image%2020240206203835.png)

## Prerequisites:
- JDK 17 or later

## Installing:

run command example:
```
docker run -d -t -i \
    -e S3_ACCESS_KEY='EXAMPLE' \
    -e S3_SECRET_KEY='EXAMPLE' \
    -e S3_REGION='EXAMPLE' \
    -e BUCKET='EXAMPLE' \
    -e EMAIL_USER='example@gmail.com' \
    -e EMAIL_PASSWORD='example' \
    -e DB_LOGIN='EXAMPLE' \
    -e DB_PASSWORD='EXAMPLE' \
    -e DB_URL='EXAMPLE:5432/EXAMPLE' \
    -p 8000:8080 \
    backend

```

build command example:
```
docker build -t backend \
    --build-arg S3_ACCESS_KEY='EXAMPLE' \
    --build-arg S3_SECRET_KEY='EXAMPLE' \
    --build-arg S3_REGION='EXAMPLE' \
    --build-arg BUCKET='EXAMPLE' \
    --build-arg EMAIL_USER='EXAMPLE' \
    --build-arg EMAIL_PASSWORD='EXAMPLE' \
    --build-arg DB_LOGIN='EXAMPLE' \
    --build-arg DB_PASSWORD='EXAMPLE' \
    --build-arg DB_URL='EXAMPLE:5432/EXAMPLE' \
    .

```

.env example:
```
export S3_ACCESS_KEY=YOURACCESSKEY
export S3_SECRET_KEY=YOURSECRETKEY
export S3_REGION=eu-west-2

export BUCKET=BUCKET
export EMAIL_USER=example@gmail.com
export EMAIL_PASSWORD=example
export DB_LOGIN=DBLOGIN
export DB_PASSWORD=YOURPASS
export DB_URL=DB_URL:5432/DATABASE
```

Build Maven project:

To build the application execute the following commands in the project folder (where pom.xml and mvnw are located):

- ```./mvnw clean package ``` # this will build the project

For the first time it will download and install Maven version configured in the project settings (v.3.8.6) Next time the cached version will be used without redownloading.

After the build is completed, the folder ```/target``` will be created with a compiled ```.jar``` ready to be launched.

### Running the Application:
Now you can launch the server for example (default port is 8080):

- ```java -jar ./target/*.jar```

### Built With:
- Maven - Build tool
- Spring Boot - Web framework
- JUnit - Testing framework

### Contributing:
Please read CONTRIBUTING.md for details on our code of conduct, and the process for submitting pull requests to us.

```TODO: make CONTRIBUTING.md```

## Authors:

### Mentor:
- [@Dmytro Uzun](https://github.com/dimdimuzun)

### Team:

- [@Maslyna](https://github.com/Maslyna)
- [@LordRen](https://github.com/LordRenDS)
- [@Denis973](https://github.com/Denis973)
- [@Vastalorde](https://github.com/Vastalorde)
