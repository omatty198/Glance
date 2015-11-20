#!/bin/sh
arg=$1
arg2=$2
url="https://api.github.com/search/repositories?q=user:"$arg"+language:"$arg2"&sort=stars&order=desc"
curl -s curl $url | jq '.items[]."name"'
