# java-demo

## Local Test

### Run the application

`mvn spring-boot:run`

### Check health endpoint (Local)

`curl http://localhost:8080/actuator/health`

## Docker Test

### Build and check docker image

`mvn clean package`
`docker build -t java-demo .`
`docker images`
`docker run -p 8080:8080 java-demo`

### Check health endpoint (Docker)

`curl http://localhost:8080/actuator/health`