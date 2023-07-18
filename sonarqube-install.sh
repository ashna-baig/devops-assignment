sudo apt update
sudo apt upgrade

#pull sonarqube image from docker hub using docker command
sudo docker pull sonarqube

#make container, specifying port and volume directory on the system
docker run -d --name sonarqube -p 9000:9000 sonarqube


