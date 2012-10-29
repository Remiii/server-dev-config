#!/bin/bash

# Install script for Vagrant dev

# GUI
# TODO

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y vim htop git-core curl acl pure-ftpd ruby ntp htop tig
sudo a2enmod rewrite
sudo useradd -m -d /home/website -s /bin/bash website
sudo passwd website
sudo groupadd website
sudo usermod -G sudo -a website
sudo usermod -G www-data -a website
sudo usermod -G adm -a website
sudo chmod 755 /home/website
sudo chown website:website /home/website
sudo mkdir /home/website/documents
sudo chown website:website /home/website/documents
sudo mkdir /home/website/documents/website
sudo chown website:website /home/website/documents/website
sudo update-alternatives --config editor

# NTP
echo -e 'Configuration NTP'
/etc/init.d/ntp stop
ntpdate fr.pool.ntp.org
/etc/init.d/ntp star

# PHP, Apache and MySQL
apt-get install -y apache2 
apt-get install -y apache2-utils 
apt-get install -y php5 
apt-get install -y php5-cli
apt-get install -y php5-dev 
apt-get install -y php5-gd
apt-get install -y apache2.2-common
apt-get install -y phpmyadmin
apt-get install -y mysql-server
apt-get install -y php5-mysql

apt-get install -y ruby ruby-dev

# Postfix
apt-get install -y postfix

# ZSH
# TODO

# Config
sed -i "s~memory_limit = 128M~memory_limit = 256M~g" /etc/php5/apache2/php.ini

# GUI GitHub
echo 'Set GitHub account'
echo 'cf. https://help.github.com/articles/set-up-git'
echo 'cf. https://help.github.com/articles/generating-ssh-keys'


# GUI
echo ''

vagrant@precise64:~$ cat install.sh su website
#!/bin/bash

# Install script for Vagrant dev

# GUI
# TODO

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y vim htop git-core curl acl pure-ftpd ruby ntp htop tig
sudo a2enmod rewrite
sudo useradd -m -d /home/website -s /bin/bash website
sudo passwd website
sudo groupadd website
sudo usermod -G sudo -a website
sudo usermod -G www-data -a website
sudo usermod -G adm -a website
sudo chmod 755 /home/website
sudo chown website:website /home/website
sudo mkdir /home/website/documents
sudo chown website:website /home/website/documents
sudo mkdir /home/website/documents/website
sudo chown website:website /home/website/documents/website
sudo update-alternatives --config editor

# NTP
echo -e 'Configuration NTP'
/etc/init.d/ntp stop
ntpdate fr.pool.ntp.org
/etc/init.d/ntp star

# PHP, Apache and MySQL
apt-get install -y apache2 
apt-get install -y apache2-utils 
apt-get install -y php5 
apt-get install -y php5-cli
apt-get install -y php5-dev 
apt-get install -y php5-gd
apt-get install -y apache2.2-common
apt-get install -y phpmyadmin
apt-get install -y mysql-server
apt-get install -y php5-mysql

apt-get install -y ruby ruby-dev

# Postfix
apt-get install -y postfix

# ZSH
# TODO

# Config
sed -i "s~memory_limit = 128M~memory_limit = 256M~g" /etc/php5/apache2/php.ini

# GUI GitHub
echo 'Set GitHub account'
echo 'cf. https://help.github.com/articles/set-up-git'
echo 'cf. https://help.github.com/articles/generating-ssh-keys'


# GUI
echo ''
