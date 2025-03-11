#!/bin/bash

# Install Java 17 (or another version if needed)
export JAVA_VERSION=17
curl -fsSL https://corretto.aws/downloads/latest/amazon-corretto-${JAVA_VERSION}-linux-x64.tar.gz | tar -xz
export JAVA_HOME=$PWD/amazon-corretto-${JAVA_VERSION}-linux-x64
export PATH=$JAVA_HOME/bin:$PATH

# Verify Java installation
java -version

# Make mvnw executable and build
chmod +x mvnw
./mvnw clean package
