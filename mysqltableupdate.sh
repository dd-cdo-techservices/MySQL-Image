mysql -u root -D mysql -pPassword@123 -e "UPDATE user SET Host='10.0.2.104' WHERE Host='localhost' AND User='root'"
sudo systemctl restart mysql