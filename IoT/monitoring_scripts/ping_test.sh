#! /bin/bash
red='\e[1;31m%s\e[0m'
grn='\e[1;32m%s\e[0m'
end=$'\e[0m'

while :
do
    clear;
    echo "Host {PING} Test";
    IP=("192.168.1.50"
        "192.168.1.51"
        "192.168.1.52"
        "192.168.1.53"
        "192.168.1.54"
        "192.168.1.55"
        "192.168.1.56"
        "192.168.1.57"
        "192.168.1.58"
        "192.168.1.59"
        "192.168.1.60"
        "192.168.1.61"
        "192.168.1.62"
        "192.168.1.63"
        "192.168.1.64"
        "192.168.1.65"
        "192.168.1.66"
        "192.168.1.67"
        "192.168.1.68"
        "192.168.1.69"
        "192.168.1.70"
        "192.168.1.71"
        "192.168.1.72"
        "192.168.1.73"
        "192.168.1.74"
        "192.168.1.75"
        "192.168.1.76"
        "192.168.1.77"
        "192.168.1.78"
        "192.168.1.79"
        "192.168.1.80"
        "192.168.1.81");
    for i in "${IP[@]}"
    do
        ping -c 1 -t 3 $i &> /dev/null && printf "%-15s : $grn %s $end \n" $i "Online" || printf "%-15s : $red %s $end \n" $i "Offline";
    done ;
    sleep 2;
done