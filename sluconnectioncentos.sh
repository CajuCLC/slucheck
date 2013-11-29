echo -n "SERVER: "
read SERVER
echo -n "IP: "
read IP
KEYFILE=/tmp/slu

rm -f $KEYFILE*
ssh-keygen -t rsa -f $KEYFILE -P '' 1> /dev/null
sed -i s/$(whoami)@$HOSTNAME/sluslu/ $KEYFILE.pub
ssh-copy-id -i $KEYFILE.pub root@$IP 1> /dev/null
ssh -o StrictHostKeyChecking=no -i $KEYFILE root@$IP wget https://raw.github.com/CajuCLC/slucheck/master/slucentos.sh;
ssh -o StrictHostKeyChecking=no -i $KEYFILE root@$IP chmod 777 slucentos.sh;
ssh -o StrictHostKeyChecking=no -i $KEYFILE root@$IP ./slucentos.sh
scp -o StrictHostKeyChecking=no -i $KEYFILE root@$IP:/root/$SERVER.txt .
ssh -o StrictHostKeyChecking=no -i $KEYFILE root@$IP rm -f $SERVER.txt
ssh -o StrictHostKeyChecking=no -i $KEYFILE root@$IP rm -f slucentos.sh
ssh -o StrictHostKeyChecking=no -i $KEYFILE root@$IP "sed -i /sluslu/d /root/.ssh/authorized_keys"
rm -f $KEYFILE*
