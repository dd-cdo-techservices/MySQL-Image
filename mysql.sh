#!/bin/bash -e

################################################################################
# Start of Packer
################################################################################

#
#Installing MySQL 5.7 which is available in default repo for Ubuntu 16.06
#

echo "Installing MySQL 5.7 now...\n"

sudo echo "mysql-server-5.7 mysql-server/root_password password Password@123" | sudo debconf-set-selections
sudo echo "mysql-server-5.7 mysql-server/root_password_again password Password@123" | sudo debconf-set-selections

if sudo apt-get -y install mysql-server-5.7 mysql-client
then
exit 0;
elif 1
then
 sudo apt-get -y install -f
fi




#mysql -u root -p root -e "use mysql; UPDATE user SET authentication_string=PASSWORD('$MYSQLPASSWORD') WHERE User='root'; flush privileges;" >> $LOGFILE 2>&1


echo "Creating Wordpress DB Users and grating privileges with already collected information...\n"

sudo mysqladmin -u root -pPassword@123 create blog

################################################################################
# End of Packer
################################################################################
