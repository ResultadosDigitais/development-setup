#!/bin/bash
cp hosts /etc/ansible/hosts
ansible-playbook galaxy.yml

echo "
[JAVA]"
java -version

echo "
[MAVEN]"
mvn -v

echo "
[NODE]"
node -v