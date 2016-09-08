install repo command:
curl -Ls http://192.168.1.213:8081/packages/centos/get_repo.sh|bash -s 192.168.1.213:8081

yum install command:
yum --disablerepo=\* --enablerepo=offlineshurenyunrepo install -y PACKAGE_NAME

install docker-compose:
