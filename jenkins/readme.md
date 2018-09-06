# Install jenkins on puppet (192.168.33.70)
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk
sudo update-alternatives --config java
### choose java 8 here

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins

### Jenkins will start running on port 8080
Go to a browser and accces 192.168.33.70:8080

Create a pipeline project and use puppet_groovy.txt code 
Create a pipeline project and use puppet_code.txt code

Build the projects
