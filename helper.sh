#!/bin/bash

url=$1
if [ -z "$url" ]
then
    url="customer-tutorial.$(minishift ip).nip.io"
fi

token=$(curl https://gist.githubusercontent.com/lordofthejars/a02485d70c99eba70980e0a92b2c97ed/raw/f16b938464b01a2e721567217f672f11dc4ef565/token.simple.jwt -s)


while true
do curl -H "Authorization: Bearer $token" $url
sleep .5
done