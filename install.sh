#!/bin/bash
apk add git
apk add bash
git clone https://github.com/iliketwertles/archery-score.git
cd archery-score
chmod +x archerybash.sh
mv archerybash.sh /bin/archeryscore
cd ..
rm -rf archery-score
