#!/bin/bash

ansible all -m yum -a "name=httpd state=installed"
ansible all -m service -a "name=httpd enabled=true state=started"
ansible all -m user -a "name=anna comment=lab4-1 create_home=yes"
ansible all -m copy -a "src=/etc/hosts dest=/tmp/hosts owner=ansible"
ansible all -m command -a "cat /tmp/hosts"
ansible all -m shell -a "cat /etc/passwd | grep -i anna"
