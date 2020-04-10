pacman -S mlocate pkgstats --noconfirm
pacman -S zip unzip unrar p7zip lzop cpio --noconfirm
pacman -S avahi nss-mdns --noconfirm
systemctl enable avahi-daemon.service
pacman -S alsa-utils alsa-plugins --noconfirm
pacman -S pulseaudio pulseaudio-alsa --noconfirm
pacman -S ntfs-3g dosfstools exfat-utils f2fs-tools fuse fuse-exfat autofs mtpfs --noconfirm
# para sincronizar la hora con la red es un demonio
timedatectl set-ntp true
pacman -S xorg --noconfirm
pacman -S nvidia --noconfirm
