FROM node:8-alpine

RUN apk add --update --no-cache \
    bash \
    python \
    py-pip \
    groff \
    jq \
    zip \
    curl \
    sed \
    git \
    ca-certificates && \
    pip install --upgrade awscli && \
    apk -v --purge del py-pip
# Install serverless
RUN npm install -g serverless
# Install aliyun-cli
RUN wget https://aliyuncli.alicdn.com/aliyun-cli-linux-3.0.2-amd64.tgz
RUN tar -xvzf aliyun-cli-linux-3.0.2-amd64.tgz
RUN rm aliyun-cli-linux-3.0.2-amd64.tgz
RUN mv aliyun /usr/local/bin/
RUN mkdir /root/.aliyun
