#!/bin/sh

echo "-----------check----------------------"
cat /etc/ssh/sshd_config|grep RSAAuthentication|grep -v RhostsRSAAuthentication
cat /etc/ssh/sshd_config|grep PubkeyAuthentication
cat /etc/ssh/sshd_config|grep AuthorizedKeysFile

echo "----------add #----------------------"
sed -i "/RSAAuthentication/s/^/#/1" /etc/ssh/sshd_config
sed -i "/PubkeyAuthentication/s/^/#/1" /etc/ssh/sshd_config 
sed -i "/AuthorizedKeysFile/s/^/#/1" /etc/ssh/sshd_config

cat /etc/ssh/sshd_config|grep RSAAuthentication|grep -v RhostsRSAAuthentication
cat /etc/ssh/sshd_config|grep PubkeyAuthentication 
cat /etc/ssh/sshd_config|grep AuthorizedKeysFile

echo "-----------delete #---------------------"
sed -i "/RSAAuthentication/s/#//1" /etc/ssh/sshd_config
sed -i "/PubkeyAuthentication/s/#//1" /etc/ssh/sshd_config 
sed -i "/AuthorizedKeysFile/s/#//1" /etc/ssh/sshd_config

cat /etc/ssh/sshd_config|grep RSAAuthentication|grep -v RhostsRSAAuthentication
cat /etc/ssh/sshd_config|grep PubkeyAuthentication 
cat /etc/ssh/sshd_config|grep AuthorizedKeysFile

echo "----------stop & start ssh----------------------"
stopsrc  -s sshd
startsrc -s sshd

lssrc -a|grep ssh
