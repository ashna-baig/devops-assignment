sudo apt update
sudo apt upgrade

#installing dependencies
sudo apt install ca-certificates curl gnupg lsb-release

#create directory for keys
sudo mkdir -p /etc/apt/keyrings

#get gpg (key) from url and decrypt it into the key folder as docker.gpg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

#grant permissions (anyone can read write) (grant read permission to all users on this file in addition to whatever other permissions are set)
sudo chmod a+r /etc/apt/keyrings/docker.gpg


echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io

