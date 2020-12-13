#!/bin/sh
yum install maven
mvn clean install wildfly:deploy

