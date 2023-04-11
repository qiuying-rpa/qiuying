FROM node:alpine

RUN sed -i s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g /etc/apk/repositories
RUN apk update && apk add git
RUN git clone https://github.com/qiuying-rpa/client.git
RUN cd client && npm i --registry=https://registry.npm.taobao.org && npm run build

FROM nginx:alpine

COPY --from=0 /client/dist /usr/share/nginx/html/
