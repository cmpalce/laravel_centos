sudo yum -y update
sudo yum -y install epel-release
sudo yum -y update
sudo yum clean all

sudo yum -y install nginx mariadb-server mariadb
sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
sudo yum -y update
sudo yum clean all

sudo yum -y install php70w php70w-mysql php70w-mcrypt php70w-dom php70w-mbstring php70w-fpm php70w-cli

sudo systemctl start nginx
sudo systemctl enable nginx

sudo systemctl start mariadb
sudo systemctl enable mariadb

/usr/bin/mysqladmin -u root password '1234'
mysql -uroot -p1234 -e "CREATE DATABASE alpha"

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/bin/composer
sudo chmod +x /usr/bin/composer

sudo yum -y install git

sudo sed -i 's/user = www-data/user = vagrant/g' /etc/php-fpm.d/www.conf
sudo sed -i 's/group = www-data/group = vagrant/g' /etc/php-fpm.d/www.conf

touch /var/www/backend/storage/logs/laravel.log
chmod ugo+w /var/www/backend/storage/logs/laravel.log
