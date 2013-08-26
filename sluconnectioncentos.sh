echo -n "SERVER: "
read SERVER
echo -n "IP: "
read IP
echo -n "PASSWORD: "
read PASSWORD
sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no root@$IP wget https://raw.github.com/CajuCLC/slucheck/master/slucentos.sh;
sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no root@$IP chmod 777 slucentos.sh;
sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no root@$IP ./slucentos.sh
scp root@$IP:/root/$SERVER.txt .
sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no root@$IP rm -rf $SERVER.txt
sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no root@$IP rm -rf slucentos.sh