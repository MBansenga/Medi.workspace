# Connecting to EC2 terminal
First step taken was to create a Linux Server in the Cloud using command `ssh -i <private-key-name>.pem ubuntu@<Public-IP-address>`

![ssh](./images/ssh.png)   

# Installing Apache and updating the firewall
Next we install Apache via Ubuntu's package manager using commands `sudo apt update` and `sudo apt install apache2`  
You can check if Apache2 is running as a service in Ubuntu using `sudo systemctl status apache2` 

![sudo_apt_update](./images/sudo_apt_update.png)   

We then need to make sure our server is running and available locally, we can do this using the following command `curl http://localhost:80` or `curl http://127.0.0.1:80`

![curl](./images/curl.png)  

We now must check and see if our Apache HTTP Server can respond to requests from the internet, this can be  
done by opening a web browser and trying to access this url: http://< Public-IP-Address >:80 -> The Public IP Address can be found in AWS Web console or by using the command `curl -s http://169.254.169.254/latest/meta-data/public-ipv4`   

![curl2](./images/curl2.png)  

The following page will show if web server is correctly installed and accessible through the firewall 

![apache_page](./images/apache_page.png)  

# Installing MySQL   
We now need a database management system to store and manage data for our website in a relational database. MySQL is a commonly used relational DBMS used within PHP environments 

To acquire and install software use the following command `sudo apt install mysql-server`  

![sudo_apt_install](./images/sudo_apt_install.png)  

Next we must log in to the MySQL console using `sudo mysql` 

![sudo_mysql](./images/sudo_mysql.png)  

We then set a password for the root user using mysql_native_password as default authentication method, user's password is defined as PassWord.1 command: `ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'PassWord.1';` , We can exit the MySQL shell using `mysql> exit` can alternatively use `\q` 

![mysql](./images/mysql.png)  

Start the interactive script with command `sudo mysql_secure_installation` 

![sudo_mysql_secure](./images/sudo_mysql_secure.png) 

To test if you are able to log into the MySQL console use `sudo mysql -p` 

![mysql_p](./images/mysql_p.png)  

# Installing PHP  

PHP is used to process code to display dynamic content to the end user. We will need to install the following packages "php", "php-mysql" - a PHP module that lets PHP communicate with MySQL-based databases and "libapache2-mod-php" - allows Apache to handle PHP files.

These can all be installed at once using `sudo apt install php libapache2-mod-php php-mysql` the following command `php -v` can be used to confirm our PHP version 

![sudo_php](./images/sudo_php.png)  

# Creating a virtual host for your website using Apache
