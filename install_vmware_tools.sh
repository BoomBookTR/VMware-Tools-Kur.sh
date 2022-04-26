#!/bin/bash

echo "Yükleme hazırlığı yapılıyor."
sleep 10
echo "Bağımlılıklar yükleniyor..."
sudo apt install gcc binutils -y

# Kurulumu yap
echo "Sistem güncelleştirmesi yapılıyor."
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y

sudo mkdir /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom
cp /mnt/cdrom/VM* /var/tmp
cd /var/tmp
tar -xzvf VM*
cd vmware-tools-distrib
sudo ./vmware-install.pl -default
cd ..
sudo rm -f VMwareTools*
sudo rm -rf vmware*


# Install Open VM Tools
apt-get install open-vm-tools
apt-get install open-vm-tools-desktop
apt-get install open-vm-tools-dev
apt-get install vmware-manager
sudo apt update


echo "Yeniden başlatmalısın..."
sudo init 6


# unninstal

#/usr/bin/vmware-uninstall-tools.pl



# Settings > Options > Guest Isolation Deaktif et Yeniden başlat> Aktif et Yeniden başlat
