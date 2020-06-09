#!/bin/bash
sudo apt-get update
sudo apt-get install -y gcc
sudo apt-get install -y openssl
sudo apt-get install -y wget
cd /usr/src
sudo wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz
sudo tar xzf Python-2.7.13.tgz
cd Python-2.7.13/
sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo apt-get install -y python-pip
sudo python2.7 get-pip.py
sudo pip install shadowsocks
sudo echo "{" > /etc/shadowsocks.json
sudo echo "\"server\":\"173.199.71.148\"," >> /etc/shadowsocks.json
sudo echo "\"local_address\":\"127.0.0.1\"," >> /etc/shadowsocks.json
sudo echo "\"local_port\":1080," >> /etc/shadowsocks.json
sudo echo "\"port_password\": {" >> /etc/shadowsocks.json
sudo echo "\"2570\":\"22223333a\"," >> /etc/shadowsocks.json
sudo echo "\"2571\":\"22223333b\"," >> /etc/shadowsocks.json
sudo echo "\"2572\":\"22223333c\"," >> /etc/shadowsocks.json
sudo echo "\"2573\":\"22223333d\"" >> /etc/shadowsocks.json
sudo echo "}," >> /etc/shadowsocks.json
sudo echo "\"timeout\":300," >> /etc/shadowsocks.json
sudo echo "\"method\":\"aes-256-cfb\"," >> /etc/shadowsocks.json
sudo echo "\"fast_open\": false" >> /etc/shadowsocks.json
sudo echo "}" >> /etc/shadowsocks.json
ssserver -c /etc/shadowsocks.json -d start
