FROM node:16.19.0-alpine3.17
LABEL maintainer=liyaodev

# 设置字符字符集
ENV LANG=C.UTF-8

# Set System Env
RUN apk update \
    && apk add vim \
    && apk add bash \
    && apk add --no-cache wget \
    && apk add --no-cache tini \
    && apk add tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

RUN echo 'root:root' | chpasswd
ENTRYPOINT ["tini", "--"]

# Set Dev Env
RUN npm config set registry https://registry.npm.taobao.org \
    && npm install -g @vue/cli@4.5.16

WORKDIR /www/server

CMD ["tail", "-f", "/dev/null"]
EXPOSE 8888
