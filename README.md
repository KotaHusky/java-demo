# java-demo

## Prerequisites

`brew install maven`
`brew install docker`
`brew install helm`

## My Setup

### Project Initialization

Setup a new Spring Boot project using [Spring Initializr](https://start.spring.io/)

- Project: Maven Project
- Language: Java
- Spring Boot: 2.5.4
- Project Metadata:
  - Group: com.example
  - Artifact: java-demo
  - Name: java-demo
  - Description: Demo project for Java
  - Package Name: com.example.java-demo
  - Packaging: Jar
  - Java: 17

### Add Actuator

Add the actuator dependency to the project via the pom.xml file, which will allow us to check the health of the application.

```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-actuator</artifactId>
</dependency>
```

### Add Dockerfile

Create a Dockerfile in the root of the project to build the application.

### Add Helm Chart

Create a Helm chart in the root of the project to deploy the application.

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
