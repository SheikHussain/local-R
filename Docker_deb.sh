#!/bin/bash
#### Instructions: Docker installation on Ubuntu
#### Usage: ./Docker_ubuntu.sh
#### Author: Hussain
echo "############## Ensure previous docker repo is clear #################"
sudo apt-get remove docker docker-engine docker.io
echo "##### update the repository package ######"
sudo apt-get update
echo "######### Install packages to allow apt to use a repository over HTTPS ###########"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
	
echo "###### Add Docker’s official GPG key ######"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "####### Verify that you now have the key with the fingerprint #########"
sudo apt-key fingerprint 0EBFCD88
sleep 5s

echo "###### Add the repository ######"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
echo "### Update apt package ###"
sudo apt-get update

echo "######## install docker ce ###"
sudo apt-get install docker-ce -y 

sleep 4s

docker
