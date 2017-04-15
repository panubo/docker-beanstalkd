FROM debian:latest

RUN apt-get update && \
    apt-get -y install beanstalkd && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


CMD ["/usr/bin/beanstalkd"]

