from docker pull armv7/armhf-ubuntu:latest

RUN apt-get -y update

RUN apt-get install -yf \
    openjdk-7-jdk \
    scala 

RUN mkdir /etc/hackpad

VOLUME /etc/hackpad/src

COPY bin/docker-entrypoint.sh /etc/hackpad/

ENTRYPOINT ["/etc/hackpad/docker-entrypoint.sh"]

EXPOSE 9000

CMD ["hackpad"]
