mysql -u root -D mysql -pPassword@123 -e "use mysql;UPDATE user SET Host='%' WHERE Host='localhost' AND User='root';"
sudo systemctl restart mysql
