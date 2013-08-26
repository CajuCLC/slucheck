HOW TO USE
========
First of all you will need to install sshpass on your OS.
  CentOS: yum install sshpass
  Ubuntu: apt-get install sshpass
  MAC: I don't know.

Now save the connections files:
  CentOS: https://raw.github.com/CajuCLC/slucheck/master/sluconnectioncentos.sh
  Ubuntu: https://raw.github.com/CajuCLC/slucheck/master/sluconnectionubuntu.sh

When you run these files, it will ask for a server name (just to save the txt file), IP of the machine and Password.
It login into the server and get the files and run commands, then it will ask the name of the server again,
I am trying to work on sending the information from one server to another.
It will run the script, save the file with the Server name you gave and then copy to your personal computer.
After that it will delete the files. I had to ask for the server name twice because I didn't figure out
how to send information from one server to another.

Now the file will be on your machine with the server name you gave.
Save it to the ticket and all done.
