# FROM node:17-alpine3.12
# WORKDIR /usr/code
# COPY ./package.json .
# RUN apk add g++ make python3 linux-headers
# RUN apk add --update py3-pip
# RUN npm install
# RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"
# # ENTRYPOINT ["tail", "-f", "/dev/null"]
# CMD [ "node", "app.js" ]

FROM ubuntu
RUN apt-get update && \
    apt-get install -y build-essential pip net-tools iputils-ping iproute2 curl

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g watchify

# more of a documentation feature
EXPOSE 5000
EXPOSE 6000-6020