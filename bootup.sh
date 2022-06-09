#!/bin/bash

#help flag
echo
while [ -n "$1" ]
do
case "$1" in
-h) echo "this is the help menu" ;;
esac
shift
done

#vars
USER="${1:-kali}"

#download modules
sudo apt install stacer
sudo apt install gobuster
sudo apt install gedit

#get and create files
      #reverse shells
curl https://github.com/eternal-red/my-kali-setup/blob/bcc639f73a0bfe47ea93b81df5e3bf6103aad40f/notes -o /home/$USER/notes

#Active Directory enumeration
mkdir /home/kali/Templates/post
wget -P /home/kali/Templates/post https://github.com/carlospolop/PEASS-ng/releases/download/20220410/linpeas.sh #linpeas
wget -P home/kali/Templates/post https://github.com/carlospolop/PEASS-ng/releases/download/20220410/winPEASx64.exe #winpeas

#pip, pip2, pip3
#reorganize files
cd /usr/share/wordlists/
cp rockyou.txt.gz /home/$USER/Templates					#rockyou.txt
cd dirbuster
cp directory-list-2.3-medium.txt /home/$USER/Templates
cp directory-list-lowercase-2.3-medium.txt /home/$USER/Templates
cd ../dirb
cp common.txt /home$USER/Templates
 
mv /home/$USER/Templates/directory-list-2.3-medium.txt md.txt					#md.txt
mv /home/$USER/Templates/directory-list-lowercase-2.3-medium.txt lc-md.txt			#lc-md.txt
#untar rockyou.txt

