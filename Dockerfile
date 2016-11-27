FROM orboan/docker-centos-supervisor-ssh
MAINTAINER Oriol Boix Anfosso <dev@orboan.com>

RUN \
  yum update -y && \
  yum install -y openssl shellinabox

# - Clean YUM caches to minimise Docker image size...
RUN \
  yum clean all && rm -rf /tmp/yum*

ENV BOXINASHELL_PORT=9100

ADD container-files /

EXPOSE 4200
