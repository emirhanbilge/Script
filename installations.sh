


#!/bin/bash


echo 1234 | sudo -S su


echo 'date +"%Y-%M-%d %T"'" - LogFileEb " >> /home/ebb/log.txt




sudo echo "sudo iptables -t nat -A PREROUTING -p tcp --dport 502 -j REDIRECT --to-ports 5020" > ebb.sh


sudo crontab -l > crontab_new

echo "@reboot /home/ebb/Desktop/EbbScripts/ebb.sh" >> crontab_new
sudo crontab crontab_new


sudo rm crontab_new

sudo chmod +x /home/ebb/Desktop/EbbScripts/ebb.sh

echo "Port forwerding "
sudo ./ebb.sh
echo "Port is ok "


#echo -ne 1 | sudo crontab -e





echo "Start EB Script ..."

echo "Update Check "
sudo apt-get update && sudo apt-get -y upgrade
echo "Update Ok" 

echo "Installing Numpy"

sudo apt-get libatlas3-base

sudo apt-get install python3-numpy

echo "Numpy installed"

echo "Installing Requirements ..." 


sudo apt-get -y install python3-pip

sudo apt-get install python3-netifaces

sudo pip3 install -r /home/ebb/Desktop/EbbScripts/requirements.txt 

sudo pip install numpy --upgrade
sudo apt-get install libatlas-base-dev





sudo git clone https://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@github.com/devEOPY/autoChangeLibraryFile.git
sudo git clone https://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@github.com/devEOPY/ModbusScd.git



cd autoChangeLibraryFile
echo 1234 | sudo -S su


echo " Auto Import Başlatılıyor ... "
sudo python3 autoImport.py
echo "Tek seferlik auto import bitti "
cd ..
echo 1234 | sudo -S su

sudo echo "sudo python3 main.py" > running.sh

sudo crontab -l > crontab_new2

sudo echo "@reboot /home/ebb/Desktop/EbbScripts/running.sh" >> crontab_new2
sudo crontab crontab_new2



sudo rm crontab_new2

sudo chmod +x /home/ebb/Desktop/EbbScripts/running.sh


sudo reboot








