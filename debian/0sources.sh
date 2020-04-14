apt install aptitude
apt install sudo
rm /etc/apt/sources.list
cp sources.list /etc/apt/
perl -pi -e 's/^(root(.*))/$1\njb$2/' /etc/sudoers
