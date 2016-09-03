# offline-yumrepo

作者： 刘金烨

创建时间：2016-09-03

更新时间：2016-09-03

线下yum源

## 安装方法：

修改config.cfg中

```
CONFIGSERVER_IP="192.168.1.244"    ## Need to check
CONFIGSERVER_PORT="8081"                ## Need to check
```

启动

```
./run.sh
```

## 使用方法：

install repo command:

```
curl -Ls http://192.168.1.244:8081/packages/centos/get_repo.sh|bash -s 192.168.1.244:8081
```

yum install command:

```
yum --disablerepo=\* --enablerepo=offlineshurenyunrepo install -y PACKAGE_NAME
```
