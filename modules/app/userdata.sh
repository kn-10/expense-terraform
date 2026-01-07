#!/bin/bash

sudo dnf install ansible python3.12-pip.noarch -y &>> /opt/userdata.log
sudo pip3.12 install boto3 botocore -y &>> /opt/userdata.log

ansible-pull -i localhost, -U https://github.com/kn-10/expense-ansible.git expense.yml -D -e service_name=frontend -e env=dev

