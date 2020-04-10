sudo pacman -S mlocate pkgstats --noconfirm --needed
sudo pacman -S zip unzip unrar p7zip lzop cpio --noconfirm --needed
sudo pacman -S avahi nss-mdns --noconfirm --needed
systemctl enable avahi-daemon.service
sudo pacman -S alsa-utils alsa-plugins --noconfirm --needed
sudo pacman -S pulseaudio pulseaudio-alsa --noconfirm --needed
sudo pacman -S ntfs-3g dosfstools exfat-utils f2fs-tools fuse fuse-exfat autofs mtpfs --noconfirm --needed
# para sincronizar la hora con la red es un demonio
timedatectl set-ntp true
sudo pacman -S xorg-server xorg-apps xorg-xinit xorg-xkill xorg-xinput xf86-input-libinput --noconfirm --needed
#sudo pacman -S xorg --noconfirm --needed
sudo pacman -S nvidia --noconfirm --needed
