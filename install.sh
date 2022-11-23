
sudo apt update 
sudo apt install -y gnupg2 ca-certificates apt-transport-https software-properties-common 
sudo apt install curl git nodejs

wget -qO - https://packages.sury.org/php/apt.gpg | sudo apt-key add - 
echo "deb https://packages.sury.org/php/ buster main" | sudo tee /etc/apt/sources.list.d/php.list 
sudo apt update  
sudo apt install php8.0 
sudo apt install apache2 libapache2-mod-php8.0 
sudo apt install php8.0-{mysql,imap,ldap,xml,curl,mbstring,zip} 
sudo apt install php php-cgi php-mysqli php-pear php-mbstring php-gettext libapache2-mod-php php-common php-phpseclib php-mysql -y



php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo cp composer.phar /usr/local/bin/composer




curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | sudo -E bash
sudo apt install symfony-cli
