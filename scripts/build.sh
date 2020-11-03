#!/bin/bash
mvn clean verify --file ./simple-api/pom.xml org.jacoco:jacoco-maven-plugin:prepare-agent install sonar:sonar -Dsonar.projectKey=ClemBdx_correction-tp1