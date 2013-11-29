echo -n "SERVER: "
read SERVER
echo -n "IP: "
read IP
KEYFILE=/tmp/slu

rm -f $KEYFILE*
ssh-keygen -t rsa -f $KEYFILE -P '' 1> /dev/null
sed -i s/$(whoami)@$HOSTNAME/sluslu/ $KEYFILE.pub
ssh-copy-id -i $KEYFILE.pub root@$IP 1> /dev/null
ssh -o StrictHostKeyChecking=no -i $KEYFILE root@$IP wget https://raw.github.com/CajuCLC/slucheck/master/sluubuntu.sh;
ssh -o StrictHostKeyChecking=no -i $KEYFILE root@$IP chmod 777 sluubuntu.sh;
ssh -o StrictHostKeyChecking=no -i $KEYFILE root@$IP ./sluubuntu.sh
scp -o StrictHostKeyChecking=no -i $KEYFILE root@$IP:/root/$SERVER.txt .
ssh -o StrictHostKeyChecking=no -i $KEYFILE root@$IP rm -f $SERVER.txt
ssh -o StrictHostKeyChecking=no -i $KEYFILE root@$IP rm -f sluubuntu.sh
ssh -o StrictHostKeyChecking=no -i $KEYFILE root@$IP "sed -i /sluslu/d /root/.ssh/authorized_keys"
rm -f $KEYFILE*
