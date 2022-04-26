#!/bin/bash


#!/bin/bash

clear
# printf " \033[8;40;100t ===> \033[8;height;widtht
# printf "\e[32m 
printf "\e[32m \033[8;40;100t
╔╦╦╦╦═╦╦╦╗╔╦╦═╦═╗
║╔╣║║╬║║║║║║║║║║║
║╚╣║║╗╣║║╚╣║║║║║║
╚╩╩═╩╩╩═╩═╩═╩╩═╩╝
╔═════════════════════════
║ \e[31mVMware Tools v1.0 \e[32m
╠═════════════════════════
║ 『x』 Çıkış
╠═════════════════════════
║ 『1』 Sistemi güncelle
║ 『2』 ISO kalıbı ile VMware Tools yükle
║ 『3』 Kütüphaneden open-vm-tools yükle
║ 『4』 Kütüphaneden open-vm-tools-dev yükle
║ 『5』 Kütüphaneden open-vm-tools-desktop yükle
║ 『6』 Kütüphaneden vmware-manager yükle
║ 『7』 OpenVM araçlarının sürümünü kontrol et
║ 『8』 VMware Tools'u arkaplanda başlat
║ 『9』 VMware Tools Kaldır
║ 『10』 Yazılım Bilgileri
╠═════════════════════════
"
read -e -p $'╚══════〙İşlem Numarası ▶ ' secim

if [[ $secim == x || $secim == X ]]; then
printf " \033[8;40;100t
『!』Kapatılıyor...
"
    sleep 2
    exit


elif [[ $secim == 1 ]]; then
printf " \033[8;40;100t
『!』Sistem Güncellenecek...

"

read -n 1 -p "Güncellemesi yapılacaktır. Başlasın mı? Evet (E), Hayır (H)?" ans;

case $ans in
    e|E)
		echo "Sistem güncelleştirmesi yapılıyor."
        sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y;;
    h|H)
        bash install_vmware_tools.sh;;
    *)
        bash install_vmware_tools.sh;;
esac


echo 
sleep 4
bash install_vmware_tools.sh

elif [[ $secim == 2 ]]; then
    printf " \033[8;40;100t
『!』Kurulum Başlıyor...

"

# KOD BAŞI
echo "Yükleme hazırlığı yapılıyor."
sleep 10
echo "Bağımlılıklar yükleniyor..."
# sudo apt install gcc binutils -y

# Kurulumu yap

sudo mkdir /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom
cp /mnt/cdrom/VM* /var/tmp
cd /var/tmp
tar -xzvf VM*
cd vmware-tools-distrib
sudo ./vmware-install.pl -default
# sudo ./vmware-install.pl -d
# sudo /usr/bin/vmware-toolbox &
sudo umount /mnt/cdrom

cd ..
echo "Kalıntılar siliniyor..."
sudo rm -f VMwareTools*
sudo rm -rf vmware*


# Install Open VM Tools
# apt-get install open-vm-tools
# apt-get install open-vm-tools-desktop
# apt-get install open-vm-tools-dev
# apt-get install vmware-manager
# sudo apt update

echo "Yeniden başlatmalısın..."
echo "Settings > Options > Guest Isolation Deaktif et Yeniden başlat> Aktif et Yeniden başlat"

read -n 1 -p "Başarılı kurulumun ardından yeniden başlatmalısın.Sistem Yeniden Başlasın mı? Evet (E), Hayır (H)?" sis;

case $sis in
    e|E)
		echo "Sistem yeniden başlatılıyor."
        sudo init 6;;
    h|H)
        bash install_vmware_tools.sh;;
    *)
        bash install_vmware_tools.sh;;
esac
# KOD SONU


    printf "

『!』Kurulum Bitti...

"



sleep 3
bash install_vmware_tools.sh

elif [[ $secim == 3 ]]; then
    printf " \033[8;40;100t
『!』Kütüphaneden open-vm-tools yükleniyor...

"

# KOD BAŞI

# Install Open VM Tools
sudo apt-get install open-vm-tools
# sudo apt-get install open-vm-tools-desktop
# apt-get install open-vm-tools-dev
# apt-get install vmware-manager
sudo apt update


# KOD SONU


    printf "

『!』Kurulum Bitti...

"

sleep 3
bash install_vmware_tools.sh

elif [[ $secim == 4 ]]; then
    printf " \033[8;40;100t
『!』Kütüphaneden open-vm-tools-dev yükleniyor...

"

# KOD BAŞI

# Install Open VM Tools
# sudo apt-get install open-vm-tools
# sudo apt-get install open-vm-tools-desktop
apt-get install open-vm-tools-dev
# apt-get install vmware-manager
sudo apt update


# KOD SONU


    printf "

『!』Kurulum Bitti...

"

sleep 3
bash install_vmware_tools.sh

elif [[ $secim == 5 ]]; then
    printf " \033[8;40;100t
『!』Kütüphaneden open-vm-tools-desktop yükleniyor...

"

# KOD BAŞI

# Install Open VM Tools
# sudo apt-get install open-vm-tools
sudo apt-get install open-vm-tools-desktop
# apt-get install open-vm-tools-dev
# apt-get install vmware-manager
sudo apt update


# KOD SONU


    printf "

『!』Kurulum Bitti...

"

sleep 3
bash install_vmware_tools.sh

elif [[ $secim == 6 ]]; then
    printf " \033[8;40;100t
『!』Kütüphaneden vmware-manager yükleniyor...

"

# KOD BAŞI

# Install Open VM Tools
# sudo apt-get install open-vm-tools
# sudo apt-get install open-vm-tools-desktop
# apt-get install open-vm-tools-dev
sudo apt-get install vmware-manager
sudo apt update


# KOD SONU


    printf "

『!』Kurulum Bitti...

"

sleep 3
bash install_vmware_tools.sh

elif [[ $secim == 7 ]]; then
    printf " \033[8;40;100t
『!』Kütüphaneden  yükleniyor...

"

# KOD BAŞI
sudo /usr/bin/vmware-toolbox-cmd -v
# KOD SONU


    printf "

『!』Kurulum Bitti...

"

sleep 3
bash install_vmware_tools.sh

elif [[ $secim == 8 ]]; then
    printf " \033[8;40;100t
『!』VMware Tools arka planda başlatılıyor...

"

# KOD BAŞI
sudo /usr/bin/vmware-toolbox &
# KOD SONU


    printf "

『!』Kurulum Bitti...

"

sleep 3
bash install_vmware_tools.sh


elif [[ $secim == 9 ]]; then
    printf " \033[8;40;100t
『!』VMware Tools kaldırılıyor...

"

# KOD BAŞI

sudo /usr/bin/vmware-uninstall-tools.pl

# KOD SONU


    printf "

『!』Kurulum Bitti...

"

sleep 3
bash install_vmware_tools.sh
fi

elif [[ $secim == 10 ]]; then
printf "\e[32m \033[8;40;100t
╔╦╦╦╦═╦╦╦╗╔╦╦═╦═╗
║╔╣║║╬║║║║║║║║║║║
║╚╣║║╗╣║║╚╣║║║║║║
╚╩╩═╩╩╩═╩═╩═╩╩═╩╝
╔═════════════════════════
║ Planlama ve Düzenleme : \e[31mİsa AKYER\e[32m
╠═════════════════════════
║ 『a』 Ana Menü
╠═════════════════════════
║ 『Github』 \e[31mBoomBookTR\e[32m
║ 『Github Linki:』 \e[31m@VMware-Tools-Kur.sh\e[32m
║ 『Bilgiler』
║  Bu program \e[31mİsa AKYER\e[32m
║  tarafından wine 
║  kurulumunu ve testlerini 
║  otomatik olarak yapmak 
║  için geliştirilmiş bir araçtır.
╠═════════════════════════
║ 『!』Ana Sayfaya 
║ 『!』Yönlendiriliyorsunuz...
╚═════════════════════════
"
sleep 7
bash install_vmware_tools.sh
fi