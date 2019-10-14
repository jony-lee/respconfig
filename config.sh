sudo apt-get install vim -y
sudo cp ./sources.list /etc/apt/sources.list
sudo cp ./raspi.list /etc/apt/sources.list.d/raspi.list
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo "deb [arch=armhf] https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/debian \
     $(lsb_release -cs) stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install docker-ce -y
sudo gpasswd -a $USER docker
newgrp docker
