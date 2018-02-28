#!/bin/bash
### Usage: Tomcat7 ####
echo "### Update system ####"
sudo apt-get update
echo " ### Install java 8 ####"
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo apt-get install zip
sudo apt-get install wget
sudo rm -rf apache-tomcat*
echo "#### Download tomcat 7 and Unzip to /opt ####"
sudo wget http://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.zip
sudo mv apache-tomcat-7.0.82.zip /opt
sudo unzip  /opt/apache-tomcat-7.0.82.zip
sudo  rm -rf /opt/apache-tomcat-7.0.82
sudo mv apache-tomcat-7.0.82 /opt
echo "### Giving permissins to bin files ###"
sudo chmod u+x /opt/apache-tomcat-7.0.82/bin/startup.sh
sudo chmod u+x /opt/apache-tomcat-7.0.82/bin/shutdown.sh
sudo chmod u+x /opt/apache-tomcat-7.0.82/bin/catalina.sh
sudo /bin/bash /opt/apache-tomcat-7.0.82/bin/startup.sh
echo "### Copy tomcat-sers.xml to conf ###"
sudo cp tomcat-users.xml /opt/apache-tomcat-7.0.82/conf/
echo "### Restart tomcat services ###"
sudo /bin/bash /opt/apache-tomcat-7.0.82/bin/shutdown.sh
sudo /bin/bash /opt/apache-tomcat-7.0.82/bin/startup.sh
