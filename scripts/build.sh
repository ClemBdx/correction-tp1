#!/bin/bash
cd ./simple-api
mvn clean verify org.jacoco:jacoco-maven-plugin:prepare-agent install sonar:sonar -Dsonar.projectKey=ClemBdx_correction-tp1