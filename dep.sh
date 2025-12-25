!/bin/bash
sudo apt-get update
sudo apt-get install -y openjdk-11-jre
sudo apt-get install -y maven
mvn clean install
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo bash
docker build -t my-java-app .
