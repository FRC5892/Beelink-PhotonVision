if ! command -v sudo &> /dev/null
then
    apt install sudo -y
    usermod -aG sudo photonvision
fi
rm -rf /tmp/beelink-photonvision
mkdir /tmp/beelink-photonvision
cd /tmp/beelink-photonvision
wget https://raw.githubusercontent.com/FRC5892/Beelink-PhotonVision/main/40_custom -o /etc/grub.d/40_custom
chmod +x /etc/grub.d/40_custom
wget https://raw.githubusercontent.com/FRC5892/Beelink-PhotonVision/main/500_usb_selector -o /etc/grub.d/500_usb_selector
chmod +x /etc/grub.d/500_usb_selector
