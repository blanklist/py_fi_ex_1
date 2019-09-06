# Docker image with latest Ubuntu version and basic python.

FROM ubuntu:latest

MAINTAINER blanklist

ADD py_install.sh /

RUN chmod u+x /py_install.sh

RUN /py_install.sh

ENV PATH /root/miniconda3/bin:$PATH

CMD ["ipython"]
