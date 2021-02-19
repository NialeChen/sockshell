#!/bin/bash
sudo apt install python3-pip
sudo pip3 install https://github.com/shadowsocks/shadowsocks/archive/master.zip
sudo ssserver --version
sudo echo "{" > /etc/shadowsocks.json
sudo echo "\"server\":\"136.244.104.167\"," >> /etc/shadowsocks.json
sudo echo "\"local_address\":\"127.0.0.1\"," >> /etc/shadowsocks.json
sudo echo "\"local_port\":1080," >> /etc/shadowsocks.json
sudo echo "\"port_password\": {" >> /etc/shadowsocks.json
sudo echo "\"3570\":\"22223333a\"," >> /etc/shadowsocks.json
sudo echo "\"3571\":\"22223333b\"," >> /etc/shadowsocks.json
sudo echo "\"3572\":\"22223333c\"," >> /etc/shadowsocks.json
sudo echo "\"3573\":\"22223333d\"" >> /etc/shadowsocks.json
sudo echo "}," >> /etc/shadowsocks.json
sudo echo "\"timeout\":300," >> /etc/shadowsocks.json
sudo echo "\"method\":\"aes-256-cfb\"," >> /etc/shadowsocks.json
sudo echo "\"fast_open\": false" >> /etc/shadowsocks.json
sudo echo "}" >> /etc/shadowsocks.json
ssserver -c /etc/shadowsocks.json -d start
