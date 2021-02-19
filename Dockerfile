FROM centos
COPY main.py /python/main.py
RUN yum update -y
RUN yum install python

