sudo apt-get update
sudo apt-get install apache2
echo '<!doctype html><html><body><h1>Hello GCE From hustcalm!</h1></body></html>' | sudo tee /var/www/index.html
exit
w
last
ls
cd sdk/gae/google_appengine
ls
./dev_appserver.py 
dev_appserver.py
exit
whoami
ls
ls -al
mkdir src
cd src
ls
ls .ssh
ls ~/.ssh
ls
git clone git@github.com:pgbovine/OnlinePythonTutor.git
sudo apt-get install git
git clone git@github.com:pgbovine/OnlinePythonTutor.git
ls
cd OnlinePythonTutor/
ls
git remote
git remote -v
ls
cd v3/
ls
vi app.yaml 
cd
ls
mkdir sdk
cd sdk/
mkdir gae
cd gae/
ls
wget http://googleappengine.googlecode.com/files/google_appengine_1.8.5.zip
ls
unzip google_appengine_1.8.5.zip 
sudo apt-get install  unzip
unzip google_appengine_1.8.5.zip 
ls
cd google_appengine
ls
whoami
ls src
ls
mkdir OpenData
cd OpenData/
ls
mkdir douban
cd douban/
ls
mkdir spider
ls
sudo apt-get install mysql-client mysql-server
sudo apt-get install python-mysqldb
ls
scp -r lihang@159.226.178.195:/home/lihang/
scp -r lihang@159.226.178.195:/home/lihang/dev/Cloud/OpenData/iMovie/Douban/spider/scan-douban-ids/douban_movie .
sudo scp -r lihang@159.226.178.195:/home/lihang/dev/Cloud/OpenData/iMovie/Douban/spider/scan-douban-ids/douban_movie .
ls
mv douban_movie/ spider/
sudo mv douban_movie/ spider/
ls
cd spider/
ls -al
chown -r lihang:lihang douban_movie/
chown -R lihang:lihang douban_movie/
sudo chown -R lihang:lihang douban_movie/
ls
ls -al
cd douban_movie/
ls
mysql -u root -p
ls
vi scan_douban_movie_ids.py 
nohup python scan_douban_movie_ids.py > scan_movie_id.log &
top
ps aux | grep python
ls
vi scan_movie_id.log 
vi scan_douban_movie_ids.py 
nohup python scan_douban_movie_ids.py > scan_movie_id.log &
vi scan_movie_id.log 
less scan_movie_id.log 
ps aux | grep python
ls
less scan_movie_id.log 
qqqqqqqqqqqq
qq
tail scan_movie_id.log 
mysql -u root -p
ls
cd OpenData/douban/spider/douban_movie/
ls
tail scan_movie_id.log | less
ps aux | grep python
ls -al
ps aux | grep python
tail scan_movie_id.log 
mysql -u root -p
ls
ps aux | grep python
kill -9 20559
ls
ps aux | grep python
ls
less scan_movie_id.log 
ls
cd OpenData/
ls
cd douban/
cd spider
ls
cd douban_movie/
ls
cd pull-data/
ls
scp -r lihang@159.226.178.195:/home/lihang/dev/Cloud/OpenData/iMovie/Douban/spider/pull-data/movie_items .
sudo scp -r lihang@159.226.178.195:/home/lihang/dev/Cloud/OpenData/iMovie/Douban/spider/pull-data/movie_items .
ls
cd movie_items/
ls
vi douban_movie_subject.py 
ls -al
cd ..
ls
sudo chown -R lihang:lihang movie_items/
ls -al
cd movie_items/
ls
vi douban_movie_subject.py 
ls
vi record.txt 
ls jsonData/
vi douban_movie_subject.py 
ls
cd test/
ls
vi record.txt 
ls
python3 douban_movie_subject.py 
ls
cd jsonData/
ls
vi 1298174.json 
scp 1298174.json lihang@159.226.178.195:/home/lihang/Downloads
sudo scp 1298174.json lihang@159.226.178.195:/home/lihang/Downloads
cd ..
ls
cd ..
ls
ls jsonData/
vi record.txt 
nohup python3 douban_movie_subject.py &
ls jsonData/
vi jsonData/5187647.json 
ls jsonData/
exit
ls
cd OpenData/douban/spider/douban_movie/pull-data/
ls
cd movie_items/
ls
ls jsonData/
ls
ps aux | grep python
tail nohup.out 
ls
ps aux | grep python
ls jsonData/
ps aux | grep pytho
exit
top
python -v
ls
cd OpenData/
ls
cd douban/
ls
cd spider/
ls
cd douban_movie/
ls
mkdir pull-data
cd pull-data/
ls
sudo apt-get install python3
python3
ls
cd OpenData/douban/spider/douban_movie/pull-data/movie_items/
ls jsonData/
exit
history
history | grep apt-get
ls
ps aux | grep python
exit
ls
cd OpenData/douban/spider/douban_movie/pull-data/movie_items/
ls
ls jsonData/ | wc -l
exit
ls
cd OpenData/douban/spider/douban_movie/pull-data/movie_items/
ls
ls jsonData/ | wc -l
cat jsonData/errorList.txt | wc -l
ls
exit
ls
cd OpenData/douban/spider/douban_movie/pull-data/
ls
cd movie_items/
ls
scp -r jsonData/ lihang@159.226.178.195:/home/lihang/dev/Cloud/OpenData/iMovie/Douban/spider/pull-data/movie_items/jsonData.gce
sudo scp -r jsonData/ lihang@159.226.178.195:/home/lihang/dev/Cloud/OpenData/iMovie/Douban/spider/pull-data/movie_items/jsonData.gce
route
ls
sudo scp -r jsonData/ lihang@159.226.178.195:/home/lihang/dev/Cloud/OpenData/iMovie/Douban/spider/pull-data/movie_items/jsonData.gce
exit
ls
cd OpenData/douban/spider/douban_movie/pull-data/movie_items/
ls
history
sudo scp -r jsonData/ lihang@159.226.178.195:/home/lihang/dev/Cloud/OpenData/iMovie/Douban/spider/pull-data/movie_items/jsonData.gce
exit
ls
ps aux | grep scp
man scp | grep -f
man scp
ls
cd OpenData/douban/spider/douban_movie/
cd pull-data/
ls
mkdir html_items
ls
cd html_items/
ls
sudo scp lihang@159.226.178.195:/home/lihang/doubanSpider/pull-data/html_items/*.py .
history
cd OpenData/douban/spider/douban_movie/ && cd pull-data/
cd html_items/
sudo scp lihang@159.226.178.195:/home/lihang/doubanSpider/pull-data/html_items/*.py .
exit
ls
ls src/
ls sdk/
df -h
ls
cd OpenData/douban/
ls
ls /var/www/index.html 
vi /var/www/index.html
echo "<?php phpinfo(); ?>" > /var/www/phpinfo.php
ls -al /var/www
groups
sudo groupadd www
sudo usermod -a -G www lihang
groups
exit
groups
sudo chown -R root:www /var/www
sudo chmod 2775 /var/www
pwd
ls -al /home
find /var/www -type f -exec sudo chmod 0664 {} +
echo "<?php phpinfo(); ?>" > /var/www/phpinfo.php
aptitude update && aptitude upgrade
sudo aptitude update && sudo aptitude upgrade
sudo aptitude install mysql-server mysql-client
sudo apt-get install mysql-server mysql-client
mysql_secure_installation 
sudo apt-get install apache2 apache2-doc
vi .bashrc
source .bashrc
ls
locale
ls
vi .bashrc
source .bashrc
locale
locale-gen 
locale-gen
service apache2 restart
sudo service apache2 restart
sudo locale-gen
sudo dpkg-re
sudo dpkg-reconfiguration locales
sudo dpkg-reconfig locales
sudo dpkg-reconfigure locales
locale
sudo apt-get install php5 php5-mysql libapache2-mod-php5
sudo apt-get install phpmyadmin
vi /etc/apache2/conf.d/phpmyadmin.conf
file /etc/apache2/conf.d/phpmyadmin.conf
vi /etc/dbconfig-common/phpmyadmin.conf 
sudo vi /etc/dbconfig-common/phpmyadmin.conf 
sudo service apache2 restart
vi /etc/apache2/apache2.conf 
sudo vi /etc/apache2/apache2.conf 
sudo service apache2 restart
mysql -u root -p
sudo vi /etc/mysql/my.cnf 
mysql -u root -p
sudo service mysqld restart
sudo service mysql restart
sudo vi /etc/mysql/my.cnf 
sudo service mysql restart
mysql -u root -p
sudo vi /etc/mysql/my.cnf 
sudo service mysql restart
mysql -u root -p
ls
cd OpenData/douban/
ls
mkdir sql
cd sql/
ls
scp lihang@159.226.178.91:/home/lihang/Downloads/movie_items.sql.tar.gz .
sudo scp lihang@159.226.178.91:/home/lihang/Downloads/movie_items.sql.tar.gz .
ls
ifcofnig
ifconfig
ip addr
vi /etc/ssh/sshd_config 
sudo vi /etc/ssh/sshd_config 
sudo service ssh restart
exit
ls
sudo useradd riodream
sudo -al /home
sudo ls -al /home
sudo passwd riodream
sudo viso
sudo visudo
cat /etc/sudoers
sudo cat /etc/sudoers
sudo ls -al /home
sudo usermod -a -G www riodream
exit
ls
users
who
ls
exit
users
who
ls
sudo adduser zhaohuan
sudo adduser diaozhaji
sudo usrmod -a -G zhaohuan www
sudo usermod -a -G zhaohuan www
sudo usermod -a -G  www zhaohuan
sudo usermod -a -G  www diaozhaji
sudo sudovi
sudo visudo
sudo cat /etc/sudoers
exit
mysql -u root -p
exit
ls
top
ls
cd OpenData/douban/spider/douban_movie/
ls
cd pull-data/
ls
ls html_items/
ls movie_items/
ls
cd
ls
users
sudo visudo
ls
ps aux | grep python
ps aux | grep http
ps aux | grep httpd
ps aux | grep apache
ls
cd OpenData/douban/sql/
mysql -u root -p
ls
ls -al
cd ..
ls
cd mysql 
ls
ls -al
file mysql 
mv mysql movie_items.mysql.tar.gz
ls
mv movie_items.mysql.tar.gz sql/
cd sql/
ls
tar zxvf movie_items.mysql.tar.gz 
ls
mysql -u root -p
who
ls
whoami
who
ls
ls -al /hom
ls -al /home
ls -al /home/env-shared/
ls -al /home/env-shared/NGfiles/
ls
sudo apt-get install django
sudo apt-get update
ls
uname -a
cat /etc/
django
python --version
sudo apt-cache search django
mysql -v
sudo apt-get install mysqldb
sudo apt-get install MySQLdb
sudo apt-get install python-mysqldb
pwd
ls
mkdir django-project
cd django-project/
pwd
sudo apt-get install python-django
ls
django-admin startproject
django-admin startproject ng-backend
django-admin startproject ngbackend
ls
cd ngbackend/
ls
python manage.py 0.0.0.0:8000
python manage.py runserver 0.0.0.0:8000
ifconfig
ip addr
python manage.py runserver 0.0.0.0:8000
ls
python manage.py runserver 0.0.0.0:8000
ls
ls /usr/lib | grep python
python --version
apache --version
vi /etc/apache2/envvars 
ls /usr/lib/apache2/modules/py
ls /usr/lib/apache2/modules/mod_py
ls
sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert libapache2-mod-python
jj
l
cd `/
cd -/
pwd
cd ~
ls
pwd
ls
cd django-project/
ls
cd ngbackend/
ls
ls ngbackend/
ls -al
ls
cd django-project/ngbackend/
ls
django-admin --version
ls
sudo apt-get install libapache2-mod-wsgi
python --version
a2enmod wsgi
a2p 
vi /etc/apache2/sites-available/default
sudo vi /etc/apache2/sites-available/default
vi /home/lihang/django-project/ngbackend/ngbackend.wsgi
sudo service apache2 restart
history
sudo vi /etc/apache2/sites-available/default
sudo service apache2 restart
hostname -f
ls
mv ngbackend.wsgi ngbackend
ls
sudo vi /etc/apache2/sites-available/default
ls
vi ngbackend/ngbackend.wsgi 
sudo service apache2 restart
ls /var/www/
ls /var/www/ -al
mv /var/www/index.html /var/www/index.html.bak
mv /var/www/phpinfo.php /var/www/phpinfo.php.bak
sudo vi /etc/apache2/sites-available/default
tail /var/log/apache2/error.log
less /var/log/apache2/error.log
ls
vi ngbackend/ngbackend.wsgi 
history
sudo vi /etc/apache2/sites-available/default
ln -s /var/www/ngbackend ~/django-project/ngbackend/ngbackend/
ls /var/www/
ls -al
ls -al /var/www
ls -al ngbackend/
rm -rf ngbackend/ngbackend
ls -al ngbackend/
ln -s ~/django-project/ngbackend/ngbackend/ /var/www/ngbackend
ls -al /var/www
ls
history
sudo vi /etc/apache2/sites-available/default
sudo service apache2 restart
ls
vi ngbackend/settings.py
ls
vi ngbackend/settings.py
ls
vi ngbackend/urls.py 
sudo a2enmod
sudo a2enmod wsgi
cat /etc/hosts
ls
vi ngbackend/settings.py
vi ngbackend/ngbackend.wsgi 
ls
mv ngbackend/ngbackend.wsgi ngbackend/ngbackend.wsgi.bak
vi ngbackend/ngbackend.wsgi
echo "SERVERNAME"
ls
vi ngbackend/ngbackend.wsgi
mv ngbackend/ngbackend.wsgi ngbackend/ngbackend.wsgi.helloworld
less /etc/apache2/apache2.conf 
less /etc/phpmyadmin/apache.conf 
ls
cd django-project/
ls
sudo vi /etc/apache2/sites-available/default
ls
ls -al
cd ngbackend/
ls
mv ngbackend/ngbackend.wsgi.bak .
ls
mv ngbackend.wsgi.bak ngbackend.wsgi
ls
vi ngbackend.wsgi 
sudo service apache2 restart
less /var/log/apache2/error.log
ls
vi ngbackend/urls.py 
sudo service apache2 restart
history
less /var/log/apache2/error.log
ls
cd django-project/
ls
cd ngbackend/
ls
ls ngbackend
ls
ls /usr/local/lib/python2.7/dist-packages/
ls /usr/local/lib/python2.6/dist-packages/
ls /usr/local/lib/python2.6/site-packages/
ls /usr/local/lib/python2.7/site-packages/
ls
which django
python --version
ls /usr/lib/python2.7/dist-packages/
ls
ls /usr/lib/python2.7/site-packages/
ls /usr/lib/python2.6/dist-packages/
ls
easy_install-2.7
which easy_install
file /usr/bin/easy_install
hostname
hostname -f
ls
vi ngbackend.wsgi 
sudo service apache2 restart
history
less /var/log/apache2/error.log
vi ngbackend.wsgi 
sudo service apache2 restart
vi ngbackend/settings.py
sudo service apache2 restart
ls
vi ngbackend/settings.py
mysql -u root -p
mysql -u lihang -p
ls
vi ngbackend/settings.py
python manage.py -h
python manage.py syncdb
mysql -u root -p
mysql -u lihang -p
mysql -u root -p
mysql -u ngng -p
ls
vi ngbackend/settings.py
vi /etc/phpmyadmin/config-db.php 
sudo vi /etc/phpmyadmin/config-db.php 
sudo vi /etc/phpmyadmin/apache.conf 
sudo vi /etc/phpmyadmin/htpasswd.setup 
sudo vi /etc/phpmyadmin/config.inc.php 
ls
sudo vi /etc/phpmyadmin/config.inc.php 
ls -al
ls -al /etc/phpmyadmin
php -v
which php
file php
which php | xargs file
file /etc/alternatives/php
sudo vi /etc/phpmyadmin/config.inc.php 
smart
sudo vi /etc/phpmyadmin/config.inc.php 
sudo vi /etc/phpmyadmin/config-db.php 
sudo vi /etc/dbconfig-common/phpmyadmin.conf 
mysql -u root -p
ls
sudo vi /etc/dbconfig-common/phpmyadmin.conf 
dpkg-reconfigure phpmyadmin
sudo dpkg-reconfigure phpmyadmin
sudo vi /etc/dbconfig-common/phpmyadmin.conf
ls
history
sudo vi /etc/phpmyadmin/config.inc.php 
sudo vi /var/lib/phpmyadmin/config.inc.php 
sudo vi /var/lib/phpmyadmin/blowfish_secret.inc.php 
ls
python
django-admin 
history | grep apahce
history | grep apache
less /var/log/apache2/error.log
ls
mysql -u ngng -p
ls
vi ngbackend/settings.py
sudo service apache2 restart
python manage.py syncdb
vi ngbackend/settings.py
mysql -u ngng -p
python manage.py startapp pyLucene
ls
ls pyLucene/
ls
python manage.py 
python manage.py help cleanup
ls
rm -rf pyLucene/
ls -al
python manage.py startapp jsonTest
vi jsonTest/models.py 
vi ngbackend/settings.py
python manage.py sql jsonTest
python manage.py validate
python manage.py syncdb
vi ngbackend/settings.py
ls
vi ngbackend/urls.py 
vi ngbackend/wsgi.py
ls
vi ngbackend/urls.py 
vi ngbackend/views.py
vi ngbackend/urls.py 
sudo service apache2 restart
ls
vi ngbackend/views.py 
python -c 'import sys && print sys.path'
vi ngbackend/urls.py 
vi ngbackend/views.py 
history
sudo service apache2 restart
vi ngbackend/views.py 
ls
cd django-project/
ls
cd ngbackend/ngbackend
ls
vi views.py 
history
sudo service apache2 restart
vi views.py 
vi -r views.py 
ls -al
rm -rf .views.py.swp 
ls
vi views.py 
sudo service apache2 restart
vi views.py 
ls
vi views.py 
vi search.py
vi urls.py 
history
sudo service apache2 restart
ls
vi views.py 
file search.py 
vi search.py 
history
sudo service apache2 restart
vi search.py 
vi sea
vi search.py 
sudo service apache2 restart
vi search.py 
ls
cd .
ls
pwd
ls -al
cd ..
ls
sudo chmod -r a+w ngbackend
sudo chmod -r ngbackend a+w
man chmod
sudo chmod -R a+w ngbackend
ls -al
ls
pwd
ls
pwd
cd ngbackend
pwd
ls
ls -al
cd ..
ls
ls -al
cd ngbackend
ls
ls -al
cd ..
ls
history
sudo chmod -R a+w ngbackend
sudo chmod -R a+rw ngbackend
ls -al
cd ngbackend
ls
pwd
ls
cd ..
ls
ls jsonTest/
ls
cd ..
ls
tar zcvf ngbackend.tar.gz ngbackend/
ls
scp ngbackend.tar.gz lihang@159.226.178.162:/home/lihang/Downloads
ls
vi django-project/ngbackend
ls -al
cd django-project/
ls -al
cd ngbackend
ls -al
cd ngbackend
ls al
ls -al
vi search.py
history
sudo service apache2 restart
ls
cd ..
ls
cd ..
ls
rm -rf ngbackend.tar.gz 
history
tar zcvf ngbackend.tar.gz ngbackend/
ls
exit
ls
cd django-project/ngbackend/
ls
vi ngbackend/views.py 
sudo service apache2 restart
vi ngbackend/urls.py 
vi ngbackend/views.py 
history
sudo service apache2 restart
vi ngbackend/urls.py 
vi ngbackend/views.py 
ls
cd django-project/ngbackend/ngbackend
ls
vi views.py 
ls
cd OpenData/douban/
ls
cd sql/
ls
mv movie_items.mysql.tar.gz movie_items.mysql.tar.gz.v0
mv movie_items.sql movie_items_v0.sql
ls
scp lihang@159.226.178.187:/home/lihang/Downloads/
scp lihang@159.226.178.187:/home/lihang/Downloads/movie_items_v1.sql.tar.gz .
pwd
l
ls
cd OpenData/douban/
ls
cd sql/
ls
tar zxvf movie_items_v1.sql.tar.gz 
ls
msyql -u root -p 
mysql -u root -p
exit
ls
cd OpenData/douban/sql/
ls
mv movie_items.sql movie_items_v1.sql
scp lihang@159.226.178.187:/home/lihang/Downloads/movie_items_v2.sql.tar.gz .
ls
cd ..
ls
cd spider/
ls
cd
ls
cd django-project/
ls
cd ngbackend
ls
cd ..
ls
pwd
mysql -u ngng -p
mysql -u root -p
ls
ls ngbackend
ls
less ngbackend/ngbackend.wsgi 
less /etc/apache2/sites-available/default
ls
cd 
ls
cd OpenData/douban/sql/
ls
pws
pwd
ls -al
exit
ps aux | grep apache2
ls
ls src/
ls
exit
ls
cd OpenData/douban/sql/
ls
pwd
ls
tar zxvf movie_items_new.sql.tar.gz 
ls
mysql -u root -p
ls
vi movie_items_new.sql
mysql -u root -p
ls
cd ..
cd
ls
cd django-project/
ls
cd ngbackend
git status
ls
vi ngbackend/settings.py
exit
ls
cd /home/env-shared/
ls
cd python-nlpir-master
ls
git log
ls linux64
ls
cd OpenData/douban/sql/
ls
pwd
ls
tar zxvf movie_items_new1.sql.tar.gz 
ls
vi movie_items_tmp1.sql 
ls
mysql -u root -p
ls
cd OpenData/douban/sql/movie_items
cd OpenData/douban/sql/
ls
pwd
ls
tar zxvf movie_items_new2.sql.tar.gz 
ls
vi movie_items_tmp2.sql 
ls
mysql -u root -p
exit
ls
cd django-project/
ls
cd ngbackend
ls
git status
git log
ls
ls -al
ls
cd ngbackend
ls
vi urls.py
ls
cd ..
ls
ls search/
vi search/urls.py
ls
django-admin startapp moviecrawler
ls
ls moviecrawler/
ls
ls jsonTest/
ls
vi ngbackend.wsgi 
vi ngbackend/settings.py
ls
cd ngbackend
ls
vi urls.py
ls
cd ..
ls
vi moviecrawler/views.py 
vi ngbackend/urls.py
sudo service restart apache22
sudo servce apache22 restart
sudo service apache22 restart
sudo service apache2 restart
ls
vi moviecrawler/views.py 
git status
git rm search/urls.pyc
git status
git add ngbackend/urls.py
git status
git commit -m 'url conf for new app moviecrawler'
git config --global user.email "licalmer@gmail.com"
git config --global user.name "hustcalm"
git commit -m 'url conf for new app moviecrawler'
ls -al .git/objects/
ls
sudo git commit -m 'url conf for new app moviecrawler'
git status
git reset HEAD~
git status
sudo chmod o+w -r .git
sudo chmod -r o+w .git
man chmod
sudo chmod -R o+w .git
ls
git status
git add moviecrawler/
git commit -m 'new app as a service for crawling movie info and insert to mysql database'
git status
git log
git status
git add ngbackend/urls.py
git commit -m 'url conf for new app moviecrawler'
git status
git remote -v
ls
git push
ls ~/.ssh/authorized_keys 
ls
git status
git log
ls
whomai
whoami
exit
ls
cd
cd OpenData/douban/sql/movie_items
cd OpenData/douban/sql
pwd
l
ls
tar zxvf movie_items_awards.sql.tar.gz
ls
less movie_awards.sql 
mysql -u root -p
ls
cd OpenData/douban/sql/
ls
pwd
tar zxvf movie_items_awards_json_dumps.sql.tar.gz 
ls
mysql -u root -p
ls
cd django-project/
ls
cd ngbackend/moviecrawler/
ls
git status
pwd
ls
cd addMovies/
ls
ls ../../search/
ls
mv getAllMovieInfoBySubjectIDModule/ getMovieInfoByIdWrapper.py ..
ls
cd ..
ls
ls addMovies/
ls
vi views.py 
ls
vi ../search/views.py
ls
vi views.py 
sudo apt-get install python-lxml
vi views.py 
ls
vi views.py 
mysql -u root -p
ls
vi getAllMovieInfoBySubjectIDModule/getAllMovieInfoById.py
vi ../ngbackend/settings.py
ls
vi getAllMovieInfoBySubjectIDModule/getAllMovieInfoById.py
ls
mysql -u ngng -p
ls
cd django-project/ngbackend/moviecrawler/
ls
mv addMovies/getMovieInfoSampleInvoker.py .
ls
python getMovieInfoSampleInvoker.py 2129039
mysql -u ngng -p
ls
vi getAllMovieInfoBySubjectIDModule/getAllMovieInfoById.py
python getMovieInfoSampleInvoker.py 2129039
ls
vi views.py 
sudo service apache2 restart
ls
vi getMovieInfoByIdWrapper.py
ls
l
ls
less /var/log/apache2/access.log
less /var/log/apache2/error.log
ls -al /var/www/
whoami
ls -al /var/
ls
ls /home/env-shared/
ls /home/env-shared/ -al
ls
ls -al /var/www
ls
vi getAllMovieInfoBySubjectIDModule/getAllMovieInfoById.py
ls ~/OpenData/movie_items/itemsByID/2129039/
ls
history
less /var/log/apache2/access.log
less /var/log/apache2/error.log
ls
vi views.py 
ls
vi views.py 
ls
vi getMovieInfoByIdWrapper.py
vi getMovieInfoByIdWrapper.py031
less /var/log/apache2/error.log
ls
vi views.py 
ls -al ~/OpenData/movie_items/itemsByID/
chmod -R o+w ~/OpenData/movie_items/itemsByID/
ls -al ~/OpenData/movie_items/itemsByID/
ls
history
less /var/log/apache2/error.log
ls
vi ../search/search.py
less /var/log/apache2/access.log
less /var/log/apache2/error.log
ls
vi views.py 
vi getAllMovieInfoBySubjectIDModule/getAllMovieInfoById.py
less /var/log/apache2/error.log
ls
vi getAllMovieInfoBySubjectIDModule/getAllMovieInfoById.py
ls
python getMovieInfoSampleInvoker.py 1859036
ls
vi getMovieInfoByIdWrapper.py
vi getAllMovieInfoBySubjectIDModule/getAllMovieInfoById.py
history
less /var/log/apache2/access.log
less /var/log/apache2/error.log
ls
vi getAllMovieInfoBySubjectIDModule/getAllMovieInfoById.py
sudo service apache2 restart
ls
less /var/log/apache2/error.log
ls
vi getAllMovieInfoBySubjectIDModule/getAllMovieInfoById.py
ls
history
less /var/log/apache2/error.log
ls
mysql -u root -p
ls
cd OpenData/movie_items
ls
cd ..
ls
cd ..
ls
cd OpenData/douban/spider/douban_movie/pull-data/movie_items/
ls
mkdir adjs
pwd
cd adjs/
ls
pwd
ls
vi adjsToMysql.py 
ls
python adjsToMysql.py 
ls
exit
ls
cd OpenData/movie_items/
ls
cp -r ~/django-project/ngbackend/moviecrawler/ .
ls
cd moviecrawler/
ls
pwd
ls
rm -rf __init__.py models.py tests.py views.py 
ls
ls addMovies/
ls
mkdir newFoundIds
cd newFoundIds/
ls
pwd
ls
less newIdListByHttplib_1299999-1000000_AfterMerge > newIdsByHttplibAndOthersLike
less newIdListFoundFromOthersLikeMinusnewIdListByHttplib >> newIdsByHttplibAndOthersLike 
ls
less newIdsByHttplibAndOthersLike 
less newIdsByHttplibAndOthersLike | wc -l
ls
cd ..
ls
vi getMovieInfoSampleInvoker.py 
ls
cp getMovieInfoSampleInvoker.py getMovieInfoDeamon.py
ls
vi getMovieInfoDeamon.py 
python getMovieInfoDeamon.py 
vi getMovieInfoDeamon.py 
python getMovieInfoDeamon.py 
vi getMovieInfoDeamon.py 
python getMovieInfoDeamon.py 
ls
ls newFoundIds/newIdByh
ls
ls newFoundIds/
ls newFoundIds/newIdsByHttplibAndOthersLike 
vi getMovieInfoDeamon.py 
python getMovieInfoDeamon.py 
jobs -l
jobs -a
kill -9 31526
jobs
ls
jobs
ls ../itemsByID/
ls
cd ..
ls
rm -rf itemsByID/*
ls
cd itemsByID/
ls
ls -al
ls
cd ..
ls
ls -al itemsByID/
ls
cd moviecrawler/
ls
nohup python getMovieInfoDeamon.py &
ls
ls ../itemsByID/1
ls ../itemsByID/
jobs
jobs -l
kill -9 31660
jobs
ls
cd ..
ls
ls itemsByID/
rm -rf itemsByID/*
ls
cd moviecrawler/
ls
vi newFoundIds/newIdsByHttplibAndOthersLike 
ls
less nohup.out 
ls
vi newFoundIds/newIdsByHttplibAndOthersLike 
ls
rm -rf nohup.out 
ls
vi getMovieInfoDeamon.py 
ls
ls ../itemsByID/1859036/
ls
history
nohup python getMovieInfoDeamon.py &
ls
ls ../itemsByID/1
ls ../itemsByID/
df -h
ls ../itemsByID/
ls
less nohup.out 
exit
ls
cd OpenData/movie_items/moviecrawler/
ls ../itemsByID/1
ls ../itemsByID/
ls
less nohup.out 
ls
ps aux | grep python
mysql -u root -p
ls
cd django-project/ngbackend
git status
ls -al
git add .
sudo chmod -R o+w .git
git status
git add .
git stattus
git status
exit
ls
exit
ls
exit
ls
screen
ls
cd OpenData/douban/spider/douban_movie/pull-data/movie_items/adjs/
ls
mkdir new
cd new/
ls
pwd
ls
vi adjsToMysql.py 
python adjsToMysql.py 
ls
history
cd OpenData/douban/spider/douban_movie/pull-data/movie_items/adjs/
ls
cd new/
ls
nohup python adjsToMysql.py &
less nohup.out 
ls
exit
ls
less /var/log/apache2/access.log
less /var/log/apache2/error.log
ls
exit
history
cd OpenData/douban/spider/douban_movie/pull-data/movie_items/adjs/
cd ../../new/
ls
cd new_short_comments_to_mysql/
ls
less nohup.out 
ls
mysql -u root -p
exit
ls
cd OpenData/douban/spider/douban_movie/pull-data/
ls
mkdir new
ls
pwd
cd new/
ls
pwd
ls
unrar new_others_like_right.rar 
ls
sudo apt-get install unrar
sudo apt-get install rar
ls
sudo apt-get install Unrar
sudo apt-cache search rar
ls
sudo apt-get install unrar
sudo apt-get install 7zip
sudo apt-get install 7Zip
ls
file new_others_like_right.rar 
dpkg -l | grep unrar
sudo apt-get update
history
sudo apt-get install unrar
ls
wget http://www.rarlab.com/rar/rarlinux-3.6.0.tar.gz
ls
tar zxvf rarlinux-3.6.0.tar.gz 
ls
cd rar
ls
sudo cp rar unrar /usr/bin
ls
cd ..
ls
unrar
echo $path
env
ls
file /usr/bin/unrar
ls
unrar
unrar -l
ls
rar/unrar 
ls
file rar/unrar 
ls
rm -rf rar
ls
wget http://rarlab.com/rar/rarlinux-x64-5.0.1.tar.gz
ls
tar rarlinux-x64-5.0.1.tar.gz 
tar zxvf  rarlinux-x64-5.0.1.tar.gz 
ls
sudo cp rar/rar rar/unrar /usr/bin/
ls
unrar 
ls
unrar new_others_like_right.rar 
unrar e  new_others_like_right.rar 
ls
rm -rf *.json
ls
unrar
unrar x new_others_like_right.rar 
ls
ls supplement/
ls
mv supplement/ new_others_like
ls
unrar x new_tags_info.rar 
ls
mv supplement/ new_user_tags
ls
df -h
ls
unrar x new_short_comments_json.rar 
ls
cd OpenData/douban/spider/douban_movie/pull-data/new/
pwd
ls
vi othersLikeToMysql.py 
ls
mkdir new_others_like_to_mysql
ls
mv new_others_like othersLikeToMysql.py new_others_like_to_mysql/
ls
cd new_others_like_to_mysql/
ls
vi othersLikeToMysql.py 
nohup python othersLikeToMysql.py &
less nohup.out 
ls
cd ..
ls
mkdir new_user_tags_to_mysql
ls
ls
history
cd OpenData/douban/spider/douban_movie/pull-data/new/
ls
mv new_user_tags userTagsToMysql.py new_user_tags_to_mysql/
ls
unrar
unrar l new_short_comments_json.rar | wc -l
ls
mkdir new_short_comments_to_mysql
ls
mv new_0 new_1 new_2 new_3 shortCommentsToMysql.py new_short_comments_to_mysql/
ls
cd new_short_comments_to_mysql/
ls
ls new_*  wc -l
ls
ls new_
ls ..
ls
history
cd OpenData/douban/spider/douban_movie/pull-data/new/
ls
cd new_user_tags_to_mysql/
ls
vi userTagsToMysql.py 
nohup python userTagsToMysql.py &
less nohup.out 
ls
less nohup.out 
cd ..
ls
cd new_others_like_
cd new_others_like_to_mysql/
ls
less nohup.out 
ls
cd ..
ls
cd new_short_comments_to_mysql/
ls
ls new_0 | wc -l
ls new_1 | wc -l
ls new_2 | wc -l
ls new_3 | wc -l
l
ls
vi shortCommentsToMysql.py 
nohup python shortCommentsToMysql.py &
ls
less nohup.out 
ls
rm -rf nohup.out 
vi shortCommentsToMysql.py 
nohup python shortCommentsToMysql.py &
less no
less nohup.out 
ls
less new_2/1721404.json
ls
less nohup.out 
less new_2/10454442.json
ls
less nohup.out 
less new_0/10767669.json 
ls
less nohup.out 
ls
df -h
cd OpenData/movie_items/
ls
ls moviecrawler/
ls
cd ..
ls
cd douban/
ls
cd spider/
ls
cd douban_movie/
ls
cd pull-data/
ls
cd movie_items/
ls
ls jsonData/
ls
cd ..
ls
cd html_items/
cd ne
cd new
ls
cd ../new/
ls
cd new_short_comments_to_mysql/
ls
rm -rf new_*
ls
df -h
exit
df -h
ls
df -h
ls
ls /dev
ls
file /dev/sda
df -h
sudo df -h
ls -l /dev/disk/by-id/google-*
sudo df -h
sudo /usr/share/google/safe_format_and_mount 
ls
ls /mnt
mkdir /mnt/ltp
sudo mkdir /mnt/ltp
ls
sudo /usr/share/google/safe_format_and_mount -m "mkfs.ext4 -F" disk4ltp /mnt/ltp
history
ls -l /dev/disk/by-id/google-*
sudo /usr/share/google/safe_format_and_mount -m "mkfs.ext4 -F" /dev/sdb /mnt/ltp
ls
df -h
ls
ls /mnt/ltp
mkdir /mnt/ltp/test
ls /mnt/ltp
ls /mnt/ltp-a;
ls /mnt/ltp -al
ls -al /
ls -al ~
ls
ls /mnt/ltp
ls
sudo chmod a+w /mnt/ltp
ls
mkdir /mnt/ltp/test
touch /mnt/ltp/touch
ls /mnt/ltp
ls /mnt/ltp -al
sudo chmod -R 777 /mnt/ltp
ls -al /mnt/ltp
sudo chown lihang:lihang /mnt/ltp
ls -al /mnt/ltp
sudo chmod -R 644 /mnt/ltp
ls -al /mnt/ltp
sudo chmod -R 777 /mnt/ltp
ls -al /mnt/ltp
ls
cd /mnt
ls -al
ls -al ltp
ls
exit
ls
df -h
ls
ls -al /mnt/ltp
ls
dmesg
df -h
exit
cd OpenData/movie_items/
ls
less movieIDQueue 
ls
less movieIDQueue 
ls
touch movieCraweler.log
less processedMovieID
less successedMovieID
less failedMovieID
ls
less failedMovieIDs
file failedMovieIDs
ls
ls -al
chmod a+w movieCraweler.log 
ls -al
ls
ls ~/django-project/ngbackend/moviecrawler/async_add_movie_cron.py 
pwd
ls 
ls movieCraweler.log 
crontab -e
ls
less movieCraweler.log 
ls
ls
df -h
ls
cd django-project/
ls
ls moviecrawler/
ls
cd ngbackend
ls
git status
git log
git status
git pull
git status
ls -al
sudo chmod -R a+w .git
git pull
git status
git add .
git commit -m 'tmp commit for all changes'
git status
git pull origin master
git status
git log
git reset HEAD~
git status
git log
git pull origin master
ls
cd moviecrawler/
ls
vi views.py 
ls async/
ls
git log
git status
ls
vi views.py 
ls /home/lihang/OpenData/movie_items/
touch movieIDQueue
ls
mv movieIDQueue ~/OpenData/movie_items/
ls
vi views.py 
less ~/OpenData/movie_items/movieIDQueue 
ls -al ~/OpenData/movie_items/movieIDQueue
chmod a+w ~/OpenData/movie_items/movieIDQueue
ls -al ~/OpenData/movie_items/movieIDQueue
ls
history
less ~/OpenData/movie_items/movieIDQueue 
ls
vi views.py
less ~/OpenData/movie_items/movieIDQueue 
vi ~/OpenData/movie_items/movieIDQueue
ls
cd async/
ls
cd ..
s
ls
vi async_add_movie_cron.py
ls
touch ~/OpenData/movie_items/processedMovieIDs
touch ~/OpenData/movie_items/failedMovieIDs
touch ~/OpenData/movie_items/successedMovieIDs
ls ~/OpenData/movie_items/successedMovieIDs -al
chmod a+w ~/OpenData/movie_items/processedMovieIDs 
chmod a+w ~/OpenData/movie_items/failedMovieIDs 
chmod a+w ~/OpenData/movie_items/successedMovieIDs 
ls
vi async_add_movie_cron.py 
python async_add_movie_cron.py 
ls
vi ls
vi async_add_movie_cron.py 
python async_add_movie_cron.py 
vi async_add_movie_cron.py 
python async_add_movie_cron.py 
ls
less ~/OpenData/movie_items/movieIDQueue 
ls
vi async_add_movie_cron.py 
ls ~/OpenData/movie_items/
less ~/OpenData/movie_items/processedMovieIDQueue 
rm -rf ~/OpenData/movie_items/processedMovieIDQueue
ls
rm -rf ~/OpenData/movie_items/successedMovieIDQueue 
rm -rf ~/OpenData/movie_items/failedMovieIDQueue 
ls
python async_add_movie_cron.py 
ls
less ~/OpenData/movie_items/movieIDQueue 
ls
vi async_add_movie_cron.py 
python async_add_movie_cron.py 
ls
vi async_add_movie_cron.py 
python async_add_movie_cron.py 
vi async_add_movie_cron.py 
python async_add_movie_cron.py 
vi async_add_movie_cron.py 
python async_add_movie_cron.py 
ls
python async_add_movie_cron.py 
ls
vi async_add_movie_cron.py 
ls
vi async_add_movie.cron
git status
vi async/README.md 
ls
pwd
ls
git status
ls
cd ..
ls
vi .gitignore 
ls
rm -rf moviecrawler/getAllMovieInfoBySubjectIDModule/1298204/
git status
git checkcout moviecrawler/getAllMovieInfoBySubjectIDModule/1298204/userTags.json
git checkout moviecrawler/getAllMovieInfoBySubjectIDModule/1298204/userTags.json
git status
git rm moviecrawler/getAllMovieInfoBySubjectIDModule/1298204/userTags.json
git status
ls moviecrawler/getAllMovieInfoBySubjectIDModule/
ls
git status
git commit -m 'delete all the .json files in 1298204 direcotry and remove them from git'
git status
git add moviecrawler/views.py moviecrawler/async_add_movie*
git status
git commit -m 'add our own aysnchronous approach for crawling movie infos using Cron'
git status
ls
cd ~/OpenData/movie_items/
ls
less movieCraweler.log 
ls
less movieIDQueue 
ls
less movieCraweler.log 
ls
less processedMovieID
ls
cd -
ls
vi moviecrawler/async_add_movie_cron.py 
less ~/OpenData/movie_items/movieIDQueue 
ls
git status
ls
cd -
ls
less movieCraweler.log 
ls
cd -
git status
git log
git push
git pull
git pull origin master
git add .
git cmmit -m 'tmp commit for new merge'
git commit -m 'tmp commit for new merge'
git status
git pull origin master
vi search/utils.py
git rm search/utils.py
git status
git log
git reset HEAD~
git status
git add search/utils.py
git status
git checkout search/utils.py
git status
git log
ls
git status
ls
git status
git log
ls
git checkout search/utils.py
git status
git
git add search/utils.py
git status
vi search/utils.py
ls
git status
git add .
git commit -m 'tmp commit for new merge'
git pull origin master
git status
ls search/utils.py
ls
cp search/utils.py ~/OpenData/
git status
git log
ls
git ls
git status
git mv search/utils.py.bak search/utils.py
git status
git add search/utils.py
git status
git log
git reset HEAD~
git status
git log
git reset HEAD~
git status
git checkout search/utils.py
git status
ls search/
ls
git status
s
ls
diff search/utils.py search/utils.py.bak 
git status
git add .
git status
git log
git status
git commit -m 'our own aync approach using Cron and tmp commit for new merge'
git status
ls search/utils.py
file search/utils.py
git status
git push
git pull
git pull origin master
git status
git branch -a
pwd
git status
git pull origin master
git status
git log
git reset HEAD~
git status
git add moviecrawler/views.py moviecrawler/async/ moviecrawler/async_add_movie*
git status
git commit -m 'our own approach for async crawling movies using Cron'
git status
git add .
git commit -m 'tmp commit for new merge'
git status
git pull  origin master
git status
ls
git status
git add search/utils.py
git status
git commit -m 'the new utils.py, damn'
git status
git pull origin master
git status
git log
git push
git status
git log
ls
vi search/utils.py
ls
l
ls
vi search/utils.py
git log
exit
cd OpenData/movie_items/
ls
less movieCraweler.log 
pwd
cd ..
ls
cd ..
ls
pwd
ls
lesss deploy_cmd.history 
less deploy_cmd.history 
ls
history | wc -l
history
history | less
ls
exit
ls
sudo apt-get install apache2
lsb_release -a
ls
sudo apt-get install mysql-server
mysql -u root -p
ls
sudo vi /etc/mysql/my.cnf 
sudo service msyql status
sudo service mysql status
ls
ls /etc/apache2/apache2.conf 
less /etc/apache2/apache2.conf 
ls
exit
