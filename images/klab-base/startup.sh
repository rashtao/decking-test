#!/bin/sh


echo "POND_NAME=$POND_NAME" >> /root/.ssh/environment
echo "VM_OWNER=$VM_OWNER" >> /root/.ssh/environment

/usr/sbin/sshd -D
