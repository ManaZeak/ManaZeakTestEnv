FROM eclipse-temurin:21-jdk-alpine
RUN apk add maven curl git firefox chromium
RUN apk add nodejs-current  --repository="http://dl-cdn.alpinelinux.org/alpine/edge/community"
RUN mkdir -p /resources/avatars/
RUN chmod -R 777 /resources/
RUN export CHROMIUM_BIN=/usr/bin/google-chrome
ENTRYPOINT ["/bin/bash"]
