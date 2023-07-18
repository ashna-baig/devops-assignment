sudo apt update
sudo apt upgrade

#pull jenkins image from docker hub using docker command
sudo docker pull jenkins/jenkins

#make container, specifying port and volume directory on the system
sudo docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins


