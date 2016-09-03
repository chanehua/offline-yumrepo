# offline-yumrepo

作者： 刘金烨

创建时间：2016-09-03

更新时间：2016-09-03

线下yum源

install repo command:

```
curl -Ls http://ADDR/packages/centos/get_repo.sh|bash -s ADDR
```

yum install command:

```
yum --disablerepo=\* --enablerepo=offlineshurenyunrepo install -y PACKAGE_NAME
```
