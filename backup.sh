#!/bin/bash 

# Root check
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Variables
cur_date="$(date +%Y-%m-%d-%H-%M)"
backup_directory="/root/Backup-Data"

# Backup process
# LDAP
slapcat -n 0 -l "${backup_directory}/config-${cur_date}.ldif"
slapcat -n 1 -l "${backup_directory}/data-${cur_date}.ldif"

# Mysql (mariadb)
mysqldump -A > "${backup_directory}/mysqlbackup-${cur_date}.sql"

# Packages
dpkg --get-selections > "${backup_directory}/installed_packages-${cur_date}.list"
mkdir "${backup_directory}/sources.list-${cur_date}"
cp -R /etc/apt/sources.list* "${backup_directory}/sources.list-${cur_date}/"
apt-key exportall 1&> "${backup_directory}/repo-${cur_date}.keys"
