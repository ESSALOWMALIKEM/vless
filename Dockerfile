FROM alpine:latest
RUN apk add --no-cache curl
RUN curl -L https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip -o v2ray.zip
RUN unzip v2ray.zip && chmod +x v2ray v2ctl
COPY config.json /etc/v2ray/config.json
CMD ["./v2ray", "run", "-config=/etc/v2ray/config.json"]
