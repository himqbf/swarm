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
wget https://raw.githubusercontent.com/himqbf/swarm/main/clef-service
chmod a+x clef-service
./clef-service start
screen -d clef
screen -S bee
spawn bee start --verbosity 5 --swap-endpoint https://goerli.infura.io/v3/5d419ee9ec5c42a79adf1bce37efaa97 --debug-api-enable --clef-signer-enable --clef-signer-endpoint /var/lib/bee-clef/clef.ipc
expect { 
        "Password" { send "qbfqq19920111"}
		"Confirm password" { send "qbfqq19920111"}
    } 
screen -d clef
yum install -y epel-release
yum list jq
yum install -y jq
