cd /mnt
mkdir bee
cd bee
yum install -y wget
wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.rpm
rpm -i bee-clef_0.4.12_amd64.rpm
wget https://github.com/ethersphere/bee/releases/download/v0.6.0/bee_0.6.0_amd64.rpm
rpm -i bee_0.6.0_amd64.rpm
wget https://raw.githubusercontent.com/himqbf/swarm/main/clefstart.sh
wget https://raw.githubusercontent.com/himqbf/swarm/main/beestart.sh
chmod +x clefstart.sh
chmod +x beestart.sh
yum install -y expect
yum install -y screen
clefcmd="bash clefstart.sh"
screen -x -S clef -p 0 -X stuff "$clefcmd"

beecmd="bash beestart.sh"
screen -x -S clef -p 0 -X stuff "$beecmd"

yum install -y epel-release
yum list jq
yum install -y jq
