#! /bin/bash
IP=$(dig +short myip.opendns.com @resolver1.opendns.com)
DATA=$(curl -s ipinfo.io/${IP} | jq .country)
echo -e "IP \t\tCOUNTRY"
echo -e "${IP} \t${DATA[@]:1:2}"



