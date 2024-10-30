#!/bin/bash

mvn clean package
docker build -t java-demo .
docker images
docker run -p 8080:8080 java-demo