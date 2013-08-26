echo -n "SERVER: "
read SERVER
echo "Creating $SERVER.txt"
touch $SERVER.txt
echo "Creating $SERVER.txt"
touch $SERVER.txt
echo "Checking Hostname"
hostname >> $SERVER.txt
echo "Checking netstat"
printf "=== netstat -ntpl ===\n\n" >> $SERVER.txt
netstat -ntpl >> $SERVER.txt
echo "Checking  NOVA"
printf "\n\n=== ps -e | grep [n]ova ===\n\n" >> $SERVER.txt
ps -e | grep [n]ova >> $SERVER.txt
echo "Checking df -h"
printf "\n\n=== df -h ===\n\n" >> $SERVER.txt
df -h >> $SERVER.txt
echo "Checking mount"
printf "\n\n=== mount ===\n\n" >> $SERVER.txt
mount >> $SERVER.txt
echo "Checking PHP Version"
printf "\n\n=== php -v ===\n\n" >> $SERVER.txt
php -v >> $SERVER.txt
echo "Checking Apache Version"
printf "\n\n=== apt-get Apache2 -v ===\n\n" >> $SERVER.txt
apt-get Apache2 -v >> $SERVER.txt
echo "Checking vhost"
printf "\n\n=== apache2ctl -S ===\n\n" >> $SERVER.txt
apache2ctl -S >> $SERVER.txt
echo "Checking top"
printf "\n\n=== top -b -n1 | head -n 18 ===\n\n" >> $SERVER.txt
top -b -n1 | head -n 18 >> $SERVER.txt
echo "Checking free -m"
printf "\n\n=== free -m ===\n\n" >> $SERVER.txt
free -m >> $SERVER.txt
echo "Checking autostart"
printf "\n\n=== ls /etc/init.d/ ===\n\n" >> $SERVER.txt
ls /etc/init.d/ >> $SERVER.txt
echo "Checking cPanel"
printf "\n\n=== dpkg -s cpanel ===\n\n" >> $SERVER.txt
dpkg -s cpanel >> $SERVER.txt
echo "Checking Plesk"
printf "\n\n=== dpkg -s plesk ===\n\n" >> $SERVER.txt
dpkg -s plesk >> $SERVER.txt
echo "Checking Email"
printf "\n\n=== grep 'status=sent' /var/log/mail* | grep '250 | tail -n 4 ===\n\n" >> $SERVER.txt
grep 'status=sent' /var/log/mail* | grep "(250" | tail -n 4 >> $SERVER.txt
echo "Checking SSH Port"
printf "\n\n=== grep Port /etc/ssh/sshd_config ===\n\n" >> $SERVER.txt
grep Port /etc/ssh/sshd_config >> $SERVER.txt
echo "Checking SSH PermitRootLogin"
printf "\n\n=== less /etc/ssh/sshd_config | grep 'PermitRootLogin' ===\n\n" >> $SERVER.txt
less /etc/ssh/sshd_config | grep 'PermitRootLogin' >> $SERVER.txt
echo "Checking SSH Password Login"
printf "\n\n=== egrep -v '^(#|$)' /etc/ssh/sshd_config | grep 'PasswordAuthentication' ===\n\n" >> $SERVER.txt
egrep -v '^(#|$)' /etc/ssh/sshd_config | grep 'PasswordAuthentication' >> $SERVER.txt
echo "Checking repolist"
printf "\n\n=== egrep -v '^(#|$)' /etc/apt/sources.list ===\n\n" >> $SERVER.txt
egrep -v '^(#|$)' /etc/apt/sources.list >> $SERVER.txt
echo "Checking updates"
printf "\n\n=== apt-get -s upgrade ===\n\n" >> $SERVER.txt
apt-get -s upgrade >> $SERVER.txt
