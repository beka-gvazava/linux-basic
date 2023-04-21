#!/bin/bash

PS3="Select MySQL Server Version: "

select ver in MySQL8.0 MariaDB10.11 MariaDB10.6 Quit
do
    case $ver in
        "MySQL8.0")
                curl -sS https://installer.cloudpanel.io/ce/v2/install.sh -o install.sh;echo "3874fff99744cf3afe6f533013282e87c95640e128d1d3998666e2929dc12978 install.sh" | sha256sum -c && sudo bash install.sh; break;;
        "MariaDB10.11")
           curl -sS https://installer.cloudpanel.io/ce/v2/install.sh -o install.sh; echo "3874fff99744cf3afe6f533013282e87c95640e128d1d3998666e2929dc12978 install.sh" | sha256sum -c && sudo DB_ENGINE=MARIADB_10.11 bash install.sh; break;;
        "MariaDB10.6")
           curl -sS https://installer.cloudpanel.io/ce/v2/install.sh -o install.sh;echo "3874fff99744cf3afe6f533013282e87c95640e128d1d3998666e2929dc12978 install.sh" | sha256sum -c && sudo DB_ENGINE=MARIADB_10.6 bash install.sh; break;;
        "Quit")
           echo "Installation Aborted"
           break;;
        *)
           echo "Ooops";;
    esac
done