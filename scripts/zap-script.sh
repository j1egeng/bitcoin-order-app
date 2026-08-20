#!/bin/bash

docker pull zaproxy/zap-stable
docker run --rm -i zaproxy/zap-stable zap-baseline.py -t "https://j1egeng.github.io/bitcoin-order-app/" -l PASS > zap_baseline_report.html

echo $? > /dev/null
