echo "Creating $HOSTNAME.txt"
touch $HOSTNAME.txt
echo "Checking Hostname"
hostname >> $HOSTNAME.txt
echo "Checking netstat"
printf "\n\n=== netstat -ntpl ===\n\n" >> $HOSTNAME.txt
netstat -ntpl >> $HOSTNAME.txt
echo "Checking  NOVA"
printf "\n\n=== ps -e | grep [n]ova ===\n\n" >> $HOSTNAME.txt
ps -e | grep [n]ova >> $HOSTNAME.txt
echo "Checking df -h"
printf "\n\n=== df -h ===\n\n" >> $HOSTNAME.txt
df -h >> $HOSTNAME.txt
echo "Checking mount"
printf "\n\n=== mount ===\n\n" >> $HOSTNAME.txt
mount >> $HOSTNAME.txt
echo "Checking PHP Version"
printf "\n\n=== php -v ===\n\n" >> $HOSTNAME.txt
php -v >> $HOSTNAME.txt
echo "Checking Apache Version"
printf "\n\n=== httpd -v ===\n\n" >> $HOSTNAME.txt
httpd -v >> $HOSTNAME.txt
echo "Checking vhost"
printf "\n\n=== httpd -S ===\n\n" >> $HOSTNAME.txt
httpd -S >> $HOSTNAME.txt
echo "Checking top"
printf "\n\n=== top -b -n1 | head -n 18 ===\n\n" >> $HOSTNAME.txt
top -b -n1 | head -n 18 >> $HOSTNAME.txt
echo "Checking free -m"
printf "\n\n=== free -m ===\n\n" >> $HOSTNAME.txt
free -m >> $HOSTNAME.txt
echo "Checking autostart"
printf "\n\n=== ls /etc/init.d/ ===\n\n" >> $HOSTNAME.txt
ls /etc/init.d/ >> $HOSTNAME.txt
echo "Checking cPanel"
printf "\n\n=== rpm -qa | grep cpanel ===\n\n" >> $HOSTNAME.txt
rpm -qa | grep cpanel >> $HOSTNAME.txt
echo "Checking Plesk"
printf "\n\n=== rpm -qa | grep plesk ===\n\n" >> $HOSTNAME.txt
rpm -qa | grep plesk >> $HOSTNAME.txt
echo "Checking Email"
printf "\n\n=== grep 'status=sent' /var/log/mail* | grep '250 | tail -n 4 ===\n\n" >> $HOSTNAME.txt
grep 'status=sent' /var/log/mail* | grep "(250" | tail -n 4 >> $HOSTNAME.txt
echo "Checking SSH Port"
printf "\n\n=== grep Port /etc/ssh/sshd_config ===\n\n" >> $HOSTNAME.txt
grep Port /etc/ssh/sshd_config >> $HOSTNAME.txt
echo "Checking SSH PermitRootLogin"
printf "\n\n=== less /etc/ssh/sshd_config | grep 'PermitRootLogin' ===\n\n" >> $HOSTNAME.txt
less /etc/ssh/sshd_config | grep 'PermitRootLogin' >> $HOSTNAME.txt
echo "Checking SSH Password Login"
printf "\n\n=== egrep -v '^(#|$)' /etc/ssh/sshd_config | grep 'PasswordAuthentication' ===\n\n" >> $HOSTNAME.txt
egrep -v '^(#|$)' /etc/ssh/sshd_config | grep 'PasswordAuthentication' >> $HOSTNAME.txt
echo "Checking repolist"
printf "\n\n=== yum repolist ===\n\n" >> $HOSTNAME.txt
yum repolist >> $HOSTNAME.txt
echo "Checking updates"
printf "\n\n=== yum check-update ===\n\n" >> $HOSTNAME.txt
yum check-update >> $HOSTNAME.txt
