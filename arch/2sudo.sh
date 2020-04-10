read -p "Username: " username
username=`echo $username | tr '[:upper:]' '[:lower:]'`
useradd -m -g users -G wheel -s /bin/bash ${username}
chfn ${username}
passwd ${username}
while [[ $? -ne 0 ]]; do
    passwd ${username}
done
