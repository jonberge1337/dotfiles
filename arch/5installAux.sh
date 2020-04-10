pacman -S i3wm --noconfirm --needed
pacman -S mpv --noconfirm --needed
pacman -S firefox --noconfirm --needed
pacman -S qutebrowser --noconfirm --needed
pacman -S chromium --noconfirm --needed
pacman -S vlc --noconfirm --needed
pacman -S scrot --noconfirm --needed
pacman -S npm --noconfirm --needed
pacman -S yarn --noconfirm --needed
pacman -S neovim --noconfirm --needed
pacman -S i3blocks --noconfirm --needed
pacman -S clang --noconfirm --needed
pacman -S mpv --noconfirm --needed
pacman -S progress --noconfirm --needed
pacman -S zathura --noconfirm --needed
pacman -S zathura-pdf-mupdf --noconfirm --needed
pacman -S udisks2 --noconfirm --needed
pacman -S sxiv --noconfirm --needed
pacman -S fd --noconfirm --needed
pacman -S transmission-gtk --noconfirm --needed
pacman -S perl-tidy --noconfirm --needed
pacman -S zsh --noconfirm --needed

yay -S ruby-neovim --noconfirm
yay -S nodejs-neovim --noconfirm

#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#youtube-dl
curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
chmod a+rx /usr/local/bin/youtube-dl

#antigen
yay -S antigen-git --noconfirm

#vimplug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
