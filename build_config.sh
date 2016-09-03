#!/bin/bash

set -eu

. ./config.cfg

#export LC_CTYPE=C 

replace_var(){
    files=$@
    echo $files | xargs sed -i 's#--CONFIGSERVER_IP--#'$CONFIGSERVER_IP'#g'
    echo $files | xargs sed -i 's#--CONFIGSERVER_PORT--#'$CONFIGSERVER_PORT'#g'

}

preconfigserver_conf(){
    rm -rf conf_d_tmp
    cp -rf conf_d.temp conf_d_tmp

    files=`grep -rl '' conf_d_tmp/*`
    replace_var $files

    rm -rf conf.d
    mv conf_d_tmp conf.d
}

preconfigserver_conf

rm -f yum_repo_readme.txt
echo "install repo command:"|tee -a yum_repo_readme.txt
echo "curl -Ls http://$CONFIGSERVER_IP:$CONFIGSERVER_PORT/packages/centos/get_repo.sh|bash -s $CONFIGSERVER_IP:$CONFIGSERVER_PORT"|tee -a yum_repo_readme.txt
echo "" | tee -a yum_repo_readme.txt 
echo "yum install command:" | tee -a yum_repo_readme.txt
echo "yum --disablerepo=\* --enablerepo=offlineshurenyunrepo install -y PACKAGE_NAME" | tee -a yum_repo_readme.txt
echo
