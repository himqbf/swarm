cd /mnt
mkdir bee
cd bee
yum install -y wget
wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.rpm
rpm -i bee-clef_0.4.12_amd64.rpm
wget https://github.com/ethersphere/bee/releases/download/v0.6.0/bee_0.6.0_amd64.rpm
rpm -i bee_0.6.0_amd64.rpm
yum install -y screen
screen -S clef
chmod a+x clef-service