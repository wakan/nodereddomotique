su -
apt update && apt dist-upgrade && apt install sudo
useradd admininstall --create-home
passwd admininstall
usermod admininstall -aG sudo
#logoff root : CRTL-D
ssh-keygen
#logoff : CTRL-D
#on ansible serveur or same computer
cat ~/.ssh/id_rsa.pub | ssh 127.0.0.1 "cat - >> ~/.ssh/authorized_keys"
sudo apt install ansible git
git clone https://github.com/wakan/nodereddomotique
cd nodereddomotique
ansible-playbook -i localhost ansible.yml
