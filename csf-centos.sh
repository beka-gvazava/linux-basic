#!/bin/bash
yum install wget zip unzip
wget wget https://download.configserver.com/csf.tgz
tar -xzf csf.tgz
cd csf
;bash install.cpanel.sh
