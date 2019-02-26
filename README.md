portfoliowebsite
----------------

I created a website to learn more about web development and to show off my programming experiences. I used the Django framework (an MVC design pattern), and nginx as a web server/reverse proxy. A major goal of this project was to design and create a responsive and aesthetically pleasing website.

DEMO
----

![alt text](https://i.imgur.com/9P13rqw.gif)

REQUIREMENTS
------------

The minimum requirement by this project is that you have Python 3.5.6 or higher.

INSTALLATION
------------

### Install Python

Install Python using a package manager:

```(Ubuntu 18.04 example) $ sudo apt-get install mysql-server```

### Install MySQL

Install MySQL on you computer either through a package manager:

```(Ubuntu 18.04 example) $ sudo apt-get install mysql-server```

### Install Python Packages

Run these commands to get the correct python packages:

```pip3 install django```
```pip3 install pymysql```
```pip3 install gunicorn```

### Install Nginx

Install MySQL on you computer either through a package manager:

```(Ubuntu 18.04 example) $ sudo apt-get install nginx```

CONFIGURATION
-------------

### Database

Create a database in mysql using this command:

```create database portfoliodb;```

Then enter in this command to fill in the database with the necessary information:

```mysql -u username -p portfoliodb < /path/to/Portfoliowebsite/portfoliodb.sql```

Edit the file `config/my.example.cnf` and rename it to `config/my.cnf` to connect to allow the web app to connect to the database:

```
[client]
database=portfoliodb
username=root
password=1234
default-character-set=utf8
```
### Nginx

Move the file `config/portolio_nginx.example.conf` to the folder directory `/etc/nginx/conf.d/`

### Gunicorn 

Copy the file `config/portfolio_gunicorn.example.service` to `/usr/lib/systemd/system` and rename it to `portfolio_gunicorn.service`

* NOTE - Create the folder `/usr/lib/systemd/system/` if it does not exist

Edit the `portfolio_gunicorn.service` so that it correctly points to the bash file:
```
[Unit]
Description=Portfoliowebsite gunicorn daemon

[Service]
Type=simple
User=ubuntu
ExecStart=/path/to/portfoliowebsite/config/gunicorn_start.sh <-- Edit this path

[Install]
WantedBy=multi-user.target
```

### Bash File

Rename the file `config/gunicorn_start.example.sh` to `config/gunicorn_start.sh` and then edit it so that it matches your specific environment

Deployment
----------

### Start Nginx

Restart Nginx by running this command:

`sudo systemctl restart nginx`

### Load/Run Gunicorn Service


