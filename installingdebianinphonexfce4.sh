while true; do
    read -p "Do you want install linux in your phone    y/n/e " yn
    case $yn in
        [Yy]* ) echo 'Installing started'

sleep 2

echo 'Grant the permission'

sleep 5

termux-setup-storage

apt update && apt upgrade

apt install x11-repo tur-repo -y && apt install termux-x11-nightly pulseaudio proot-distro -y

pd install debian

proot-distro login debian --shared-tmp -- /bin/bash -c 'apt update && apt upgrade && apt install xfce4 xfce4-goodies sudo nano echo mv sleep chromium git -y && echo "You need to setup password, but remember your password (if you dont enter password you cant install apps)" && sleep 3 && adduser debianuser && mv "/usr/bin/chromium" "/usr/bin/chrim" && echo "chrim --no-sandbox" > /usr/bin/chromium && rm /etc/sudoers && git clone https://github.com/vanapavluk9/sdx4ip-1.git && mv sdx4ip/sudoers /etc/ && chmod +x /etc/sudoers && exit'

chmod +x sdx4ip-1/startxfce4

mv sdx4ip-1/startxfce4 ../usr/bin

mkdir ../usr/bin/znak

rm -r sdx4ip-1

echo 'Installation successfuly completed!

type "startxfce4" it runs'

sleep 3;;
        [Nn]* ) exit;;
        [Ee]* ) while true; do
    read -p "Do you want to install extension" yn
    case $yn in
        [Yy]* ) if [ -d ".extension" ]; then
    if [ -d "../usr/bin/znak" ]; then
    echo "Extension downloaded, installing."
    mv .extension storage/shared
    proot-distro login debian --shared-tmp -- /bin/bash -c 'mv /sdcard/.extension /home/debianuser && bash /home/debianuser/.extension/install.sh'
else
    echo "Sdx4ip not installed."
fi
else
    echo "Extension not downloaded, refusing to install."
    exit
fi;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
    esac
done

