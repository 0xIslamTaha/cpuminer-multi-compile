apt-get install -y automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++
mkdir -p /opt/code && chmod -R +x /opt/code && cd /opt/code
wget https://github.com/tpruvot/cpuminer-multi/archive/linux.zip && unzip linux.zip && rm -rf linux.zip
cd cpuminer* && ./build.sh
cp cpuminer /bin