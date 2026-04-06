#!/usr/bin/bash


LOG_DIR=$1
R="\e[31m"
G="\e[32m"
W="\e[0m"
log_archive(){
    if [[ -d ${1} ]]; then
        echo -e "File Exist Check ... ${G}SUCCESS!${W}"
    else
        echo -e "File Exist Check ... ${R}FAILED!${W}"
        echo "Please check File existence and try again"
        return 1
    fi

    echo"Hello"
    DATE_NOW=$(date +%Y%m%d_%H%M%S)
    tar -czvf "logs_archive_${DATE_NOW}.tar.gz" ${1}
}

log_archive "/home/ec2-user/Log-Archive-Tool"