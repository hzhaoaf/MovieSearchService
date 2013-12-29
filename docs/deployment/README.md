NG Backend Deployment
=====================

This is the deployment process of our NG Backend Service. 

Basically, we rely on `Apache2` Web Server, `Django` Web Framework to host our `web service` and deal with `http request`. Using `Mysql` as the database and `PyLucene` to do full text index. However, a `Lexical Analysis System` called `LTP` is used to parse user queries. After all, all these stuff are hosted on `GCE(Google Compute Engine)` running `Debian 7.2 Wheezy`. `Python` is used as long as it can get things done. Also all the config files will be tracked by `Git`.

I will give deployment details below to tell what is all happening.

### Operating System
#### Software Source
We use `Debian 7.2 Wheezy x86_64` and remember:
    
    sudo apt-get update

Or run:
    
    sudo aptitude update && sudo aptitude upgrade

After you install the new OS.

#### SSH(Optional)

For remote access, you may want config your `ssh` service:

    sudo apt-get install openssh-client openssh-server

Use
    ssh-keygen

to generate your `RSA` public/private key pair and leave the `public key` in the server and keep the `private key` in your client.

For other setting related to `sshd`, run:
    vi /etc/ssh/sshd_config

**Little Hint**:

You may want to run:

    nohup your_command &

in case that your ssh connection got lost and your command got killed.

#### User Management
To add a new user:

    sudo useradd new_user_name
    sudo passwd new_user_name
    sudo usermod -a -G your_group_name new_user_name

To config the `sudo` previleges, run:
    
    sudo visudo

Or edit `/etc/sudoers` directly.

#### Python
Almost every Linux Distro would ship with it, if you got no luck, run:

    sudo apt-get install python

If you like `Python3`, run"

    sudo apt-get install python3

#### Daemon Tasks
For long run tasks, use `Cron`:

    crontab -e

and add your task.

#### Version Control
Install `Git` by running:

    sudo apt-get install git

Then config your git refer to any cheatsheet.

### Database
#### Mysql
`Mysql` may already lay in your OS, if not, do:

    sudo apt-get install mysql-server
    sudo apt-get install mysql-client

Then you may want to edit `/etc/mysql/my.cnf` to add:

    init-connect=`SET NAMES utf8`
    character-set-server=utf8

to the `[mysqld]` section, in order to ensure we are using `UTF8` the right way.

Also remember the password you set for the root user. Or you can rerun:

    mysql_secure_installation

For the new settings to take place, run:

    sudo service mysql restart

To access your mysql using Python, you need to run:

    sudo apt-get install python-mysqldb

#### PHPMyadmin
To ease the pain dealing with varies of `msyql` commands, you may want to install `phpmyadmin`:

    sudo apt-get install php5 php5-mysql libapache2-mod-php5
    sudo apt-get install phpmyadmin
    groups
    sudo groupadd www
    sudo usermod -a -G www your_user_name
    groups
    sudo chown -R root:www /var/www
    sudo chmod 2775 /var/www
    find /var/www -type f -exec sudo chmod 0664 {} +
    echo "<?php phpinfo(); ?>" > /var/www/phpinfo.php

Edit `/etc/dbconfig-common/phpmyadmin.conf` to enable remote login and remember:

    sudo service apache2 restart

After you make changes to config files.

Then you can access `http://hostname/phpMyAdmin` or `http://IP_Addr/phpMyAdmin` to manage your mysql database.

### PyLucene

#### Required Packages

* python(of course)
* python-dev
* setuptools
* jdk
* jcc
* Ant

#### Procedures:

1. Install python 2.7.5
	
2. Intall python-dev
		
		sudo apt-get install python-dev
	
3. Install setuptools(easy_install)

	    download ez_setup.py

		python ez_setup.py

4. Install jdk

	check your JDK Version 

		java -version
		javac -version
	

	You may get this result:

		$java -version
		java version "1.7.0_21"
		OpenJDK Runtime Environment (IcedTea 2.3.9) (7u21-2.3.9-1ubuntu1)OpenJDK Server VM (build 23.7-b01, mixed mode)
		
		$javac -version
		javac 1.7.0_21
	
    `javac` version should have the same version number as `java` does.

    If you are not sure whether it is suitably installed, you can install by using `apt-get`.

5. Install jcc

		cd jcc
	
	Change your JDK path:

		JDK = {
			'darwin': JAVAHOME,
			'ipod': '/usr/include/gcc',
			'linux2': '/usr/lib/jvm/java-7-openjdk-amd64', <---change this path to adjust your system
			'sunos5': '/usr/jdk/instances/jdk1.6.0',
			'win32': JAVAHOME,
			'mingw32': JAVAHOME,
			'freebsd7': '/usr/local/diablo-jdk1.6.0'
			}
	
	Then build and install:

		python setup.py build
		sudo python setup.py install
	

	If no error messages pop up, you got luck:-).

6. Get Ant

		sudo apt-get install ant
	
7. Install pylucene

	Modify Makefile:

		# Linux (Ubuntu 11.10 64-bit, Python 2.7.2, OpenJDK 1.7, setuptools 0.6.16)
		# Be sure to also set JDK['linux2'] in jcc's setup.py to the JAVA_HOME value
		# used below for ANT (and rebuild jcc after changing it).
		PREFIX_PYTHON=/usr
		ANT=JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-i386 /usr/bin/ant
		PYTHON=$(PREFIX_PYTHON)/bin/python
		JCC=$(PYTHON) -m jcc --shared
		NUM_FILES=2

	Find this line:

		#JARS+=$(SMARTCN_JAR)            # smart chinese analyzer

	Delete the prefix `#`:

	Find

		--exclude org.apache.lucene.sandbox.queries.regex.JakartaRegexpCapabilities \
	
	And add this line blow it:

		--exclude org.apache.lucene.analysis.cn.smart.AnalyzerProfile\
	

	Then run:

		make
		sudo make install
	
8. Verify And Test

	In a Python Console:

		>>import lucene
		>>lucene.*
	

Enjoy it ！


### Web Service
#### Apache2
Typically, `Debian` would be already shipped with `apache2`. If not ,do this:

    sudo apt-get install apache2 apache2-doc

For controlling `apache2`'s behavior, edit:

    /etc/apache2/apache2.conf

and run:

    sudo service apache2 restart

For tesing your web server, simple run:
    
    echo '<!doctype html><html><body><h1>Greetings From Apache!</h1></body></html>' | sudo tee /var/www/index.html

Then access your `http://hostname` or `http://IP_Address` to see the page.


#### Django
To deal with `http request` sent from client side, we use a `Python Web Framework` called [Django](https://www.djangoproject.com/).

The bridge between `Apache2` and `Django`, we use [mod_wsgi](http://code.google.com/p/modwsgi/).

For configuring, we mainly refer to the official documentation [How to use Django with Apache and mod_wsgi](https://docs.djangoproject.com/en/1.2/howto/deployment/modwsgi/).

The steps we use are:

*   [Install Django]

        sudo apt-get install python-django
        sudo apt-get install python-mysqldb

*   [Verify Django]

        django-admin startproject test
        cd test/
        python manage.py runserver

Visit `http://127.0.0.1:8000/` with your web browser.

*   [Work with database and model]

        vi settings.py

Alter `ENGINE`, `NAME`, `USER`, `PASSWORD` and `HOST` according to the comments in the file.

*   [Install WSGI module]

        sudo apt-get install libapache2-mod-wsgi
        a2enmod wsgi
    
*   [Config Django and WSGI]

        vi your_django_project/your_default_app.wsgi

and add:

    
    #-- coding:utf-8 --

    import os
    import sys

    os.environ['DJANGO_SETTINGS_MODULE'] = 'ngbackend.settings'

    os.environ['PYTHON_EGG_CACHE'] = '/tmp/.python-eggs'

    current_dir = os.path.dirname(__file__)

    if current_dir not in sys.path:

        sys.path.append(current_dir)

     

    import django.core.handlers.wsgi

    application=django.core.handlers.wsgi.WSGIHandler()

*   [Config Apache and WSGI]

        vi /etc/apache2/sites-available/default

add:

    WSGIScriptAlias / your_django_project/your_default_app.wsgi
    <Directory your_django_project/your_default_app/>
        Order deny,allow
        Allow from all
    </Directory>

*   [Verify WSGI]
    
        sudo service apache2 restart

Send `GET` or `POST` http request to your server and see how it works.

*   [Start your project]

        django-admin startproject your_project
        python manage.py startapp your_app

*   [Add views and models]

        vi views.py
        vi urls.py

Do not forget to:
    
    python manage.py syncdb

Add you own http request handler to get things done!

**Note**:

If your `apache wsgi` is not in `deamon` mode, you may need to restart `apache` when you modify your project.

### LTP
Since we have integrated `LTP` into our project, we don't need to deploy `LTP` specifically, however, for the usage of LTP, you can refer to its official document at [LTP使用文档v3.0](https://github.com/HIT-SCIR/ltp/blob/master/doc/ltp-document-3.0.md).
