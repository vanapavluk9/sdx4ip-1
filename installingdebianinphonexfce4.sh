echo 'Grant the permission'

termux-setup-storage

apt update -y && apt upgrade -y

apt install x11-repo tur-repo -y && apt install termux-x11-nightly pulseaudio proot-distro -y

pd install debian

proot-distro login debian --shared-tmp -- /bin/bash -c 'apt update -y && apt upgrade -y && apt install xfce4 xfce4-goodies sudo nano chromium git -y && echo "You need to setup password, but remember your password (if you dont enter password you cant install apps)" && sleep 3 && adduser debianuser && mv "/usr/bin/chromium" "/usr/bin/chrim" && echo "chrim --no-sandbox" > /usr/bin/chromium && chmod +x /usr/bin/chromium && rm /etc/sudoers && git clone https://github.com/vanapavluk9/sdx4ip-1.git && mv sdx4ip-1/sudoers /etc && chmod +x /etc/sudoers && rm -r sdx4ip-1 && exit'

chmod +x sdx4ip-1/startxfce4

mv sdx4ip-1/startxfce4 ../usr/bin

rm -r sdx4ip-1

echo 'Installation successfuly completed!

type "startxfce4" it runs'

sleep 3
