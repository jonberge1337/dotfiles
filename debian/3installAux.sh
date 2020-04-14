sudo aptitude install i3-wm -y
sudo aptitude install rofi -y
sudo aptitude install mlocate -y
sudo aptitude install p7zip-full -y
sudo aptitude install mpv -y
sudo aptitude install qutebrowser -y
sudo aptitude install chromium -y
sudo aptitude install vlc -y
sudo aptitude install scrot -y
sudo aptitude install npm -y
sudo aptitude install yarn -y
sudo aptitude install neovim -y
sudo aptitude install i3blocks -y
sudo aptitude install clang -y
sudo aptitude install clangd -y
sudo aptitude install mpv -y
sudo aptitude install progress -y
sudo aptitude install zathura -y
sudo aptitude install udisks2 -y
sudo aptitude install sxiv -y
sudo aptitude install transmission-gtk -y
sudo aptitude install perltidy -y
sudo aptitude install zsh -y
sudo aptitude install curl -y
sudo aptitude install rxvt-unicode -y
sudo aptitude install libperl-dev -y
sudo aptitude install libwww-perl -y
sudo aptitude install libwww-mechanize-perl -y
sudo aptitude install cpanminus -y
sudo aptitude install python3-dev -y
sudo aptitude install clang-format -y
sudo aptitude install xclip -y
sudo aptitude install telegram-desktop -y
sudo aptitude install perl-doc -y

sudo aptitude install ruby-neovim -y
#sudo npm install -g neovim

#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#antigen
curl -L git.io/antigen > .antigen.zsh

#vimplug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#nerd fonts
git clone https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh
cd ..
rm -rf nerd-fonts

#brave-browser
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
