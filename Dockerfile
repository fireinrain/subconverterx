FROM tindy2013/subconverter:latest
LABEL maintainer="fireinrain"

ENV VERSION latest

WORKDIR /base
RUN apk add tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata

COPY groups.txt rulesets.txt /base/snippets/
COPY pref.ini /base
COPY all_base.tpl /base/base/

EXPOSE 25500

WORKDIR /base

CMD subconverter
