FROM python:3.11-slim

COPY flask/requirements.txt .

RUN sed -i s/deb.debian.org/mirrors.aliyun.com/g /etc/apt/sources.list
RUN sed -i s/security.debian.org/mirrors.aliyun.com/g /etc/apt/sources.list
RUN apt-get update && apt-get install gcc libpq-dev -y
RUN pip install -U pip -i https://mirrors.aliyun.com/pypi/simple/
RUN pip install -i https://mirrors.aliyun.com/pypi/simple/ -r requirements.txt

CMD ["python3"]
