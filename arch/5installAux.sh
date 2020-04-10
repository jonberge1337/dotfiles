sudo pacman -S i3wm --noconfirm --needed
sudo pacman -S mpv --noconfirm --needed
sudo pacman -S firefox --noconfirm --needed
sudo pacman -S qutebrowser --noconfirm --needed
sudo pacman -S chromium --noconfirm --needed
sudo pacman -S vlc --noconfirm --needed
sudo pacman -S scrot --noconfirm --needed
sudo pacman -S npm --noconfirm --needed
sudo pacman -S yarn --noconfirm --needed
sudo pacman -S neovim --noconfirm --needed
sudo pacman -S i3blocks --noconfirm --needed
sudo pacman -S clang --noconfirm --needed
sudo pacman -S mpv --noconfirm --needed
sudo pacman -S progress --noconfirm --needed
sudo pacman -S zathura --noconfirm --needed
sudo pacman -S zathura-pdf-mupdf --noconfirm --needed
sudo pacman -S udisks2 --noconfirm --needed
sudo pacman -S sxiv --noconfirm --needed
sudo pacman -S fd --noconfirm --needed
sudo pacman -S transmission-gtk --noconfirm --needed
sudo pacman -S perl-tidy --noconfirm --needed
sudo pacman -S zsh --noconfirm --needed

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
