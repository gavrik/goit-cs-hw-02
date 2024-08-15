#!/bin/bash

LOG_FILE="website_status.log"
WEBSITES=("https://google.com" "https://facebook.com" "https://twitter.com")

for w in "${WEBSITES[@]}"
do
  if curl -IL --head "$w" -w '%{http_code}' -s -o /dev/null  | grep "200" > /dev/null
  then
    echo $w "is UP" | tee -a ${LOG_FILE}
  else
    echo $w "is DOWN" | tee -a ${LOG_FILE}
  fi
done

exit 0
