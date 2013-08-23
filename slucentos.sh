echo "Creating slu.txt"
touch slu.txt
echo "Checking Hostname"
hostname >> slu.txt
echo "Checking netstat"
printf "\n\n=== netstat -ntpl ===\n\n" >> slu.txt
netstat -ntpl >> slu.txt
echo "Checking  NOVA"
printf "\n\n=== ps -e | grep [n]ova ===\n\n" >> slu.txt
ps -e | grep [n]ova >> slu.txt
echo "Checking df -h"
printf "\n\n=== df -h ===\n\n" >> slu.txt
df -h >> slu.txt
echo "Checking mount"
printf "\n\n=== mount ===\n\n" >> slu.txt
mount >> slu.txt
echo "Checking PHP Version"
printf "\n\n=== php -v ===\n\n" >> slu.txt
php -v >> slu.txt
echo "Checking Apache Version"
printf "\n\n=== httpd -v ===\n\n" >> slu.txt
httpd -v >> slu.txt
echo "Checking vhost"
printf "\n\n=== httpd -S ===\n\n" >> slu.txt
httpd -S >> slu.txt
echo "Checking top"
printf "\n\n=== top -b -n1 | head -n 18 ===\n\n" >> slu.txt
top -b -n1 | head -n 18 >> slu.txt
echo "Checking free -m"
printf "\n\n=== free -m ===\n\n" >> slu.txt
free -m >> slu.txt
echo "Checking autostart"
printf "\n\n=== ls /etc/init.d/ ===\n\n" >> slu.txt
ls /etc/init.d/ >> slu.txt
echo "Checking cPanel"
printf "\n\n=== rpm -qa | grep cpanel ===\n\n" >> slu.txt
rpm -qa | grep cpanel >> slu.txt
echo "Checking Plesk"
printf "\n\n=== rpm -qa | grep plesk ===\n\n" >> slu.txt
rpm -qa | grep plesk >> slu.txt
echo "Checking Email"
printf "\n\n=== grep 'status=sent' /var/log/mail* | grep '250 | tail -n 4 ===\n\n" >> slu.txt
grep 'status=sent' /var/log/mail* | grep "(250" | tail -n 4 >> slu.txt
echo "Checking SSH Port"
printf "\n\n=== grep Port /etc/ssh/sshd_config ===\n\n" >> slu.txt
grep Port /etc/ssh/sshd_config >> slu.txt
echo "Checking SSH PermitRootLogin"
printf "\n\n=== less /etc/ssh/sshd_config | grep 'PermitRootLogin' ===\n\n" >> slu.txt
less /etc/ssh/sshd_config | grep 'PermitRootLogin' >> slu.txt
echo "Checking SSH Password Login"
printf "\n\n=== egrep -v '^(#|$)' /etc/ssh/sshd_config | grep 'PasswordAuthentication' ===\n\n" >> slu.txt
egrep -v '^(#|$)' /etc/ssh/sshd_config | grep 'PasswordAuthentication' >> slu.txt
echo "Checking repolist"
printf "\n\n=== yum repolist ===\n\n" >> slu.txt
yum repolist >> slu.txt
echo "Checking updates"
printf "\n\n=== yum check-update ===\n\n" >> slu.txt
yum check-update >> slu.txt