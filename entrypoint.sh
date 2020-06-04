#!/bin/bash

sonar-scanner \
    -Dsonar.host.url=${SONARCLOUD_URL} \
    -Dsonar.login=${INPUT_LOGIN} \
	-Dsonar.password=${INPUT_PASSWORD} \
    -Dsonar.projectKey=${PWD##*/} \
    -Dsonar.projectBaseDir=${INPUT_PROJECTBASEDIR} \
    -Dsonar.projectKey=devops1 -Dsonar.projectName=devops1 \
    -Dsonar.sources=. \
    -Dsonar.exclusions="utils/**,violet/Docker/Swarm/60-Maintenance/**,violet/Docker/Swarm/Scripts/AWS-Swarm/**,violet/Docker/Swarm/Scripts/azure/**,violet/Jenkins/AWS/**"
