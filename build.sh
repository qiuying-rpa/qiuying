#!/bin/bash

target=qiuying_rpa
mkdir $target
mkdir $target/flask-data
cp -r flask $target
cp flask/static/default_cover.jpg $target/flask-data
rm -rf $target/flask/**/.idea $target/flask/**/.DS_Store $target/flask/**/.gitignore $target/flask/**/__pycache__
cd vue && yarn && yarn build
cd ..
cp -r vue/dist $target/vue
cp nginx.conf $target
cp Dockerfile $target
cp docker-compose.yml $target
zip -r $target.zip $target
rm -rf $target
