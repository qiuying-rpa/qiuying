#!/bin/bash

target=qiuying_rpa

if [ ! -d $target ]; then
    mkdir $target
fi
if [ ! -d $target/pg-data ]; then
    mkdir $target/pg-data
fi
if [ ! -d $target/redis-data ]; then
    mkdir $target/redis-data
fi
if [ ! -d $target/flask-data ]; then
    mkdir $target/flask-data
fi
if [ ! -d $target/logs ]; then
    mkdir $target/logs
fi

cd $target
docker-compose down
cd ..
rm -rf $target/flask $target/vue
unzip -o $target.zip
rm $target.zip
cd $target

docker-compose up -d
cd ..

