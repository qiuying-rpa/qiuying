FROM python:alpine

RUN sed -i s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g /etc/apk/repositories
RUN apk update && apk add git bash build-base postgresql-dev
RUN git clone https://github.com/qiuying-rpa/console.git
RUN cd console && pip install -i https://mirrors.aliyun.com/pypi/simple/ -r requirements.txt
RUN pip install gunicorn -i https://mirrors.aliyun.com/pypi/simple/

COPY wait-for-it.sh /console/
