FROM centos:7
COPY main.py /python/main.py
COPY data /data 
RUN yum update -y
RUN yum install epel-release -y
RUN yum install python3 -y
RUN yum install python3-pip -y
RUN pip3 install pandas
RUN pip3 install numpy
RUN pip3 install requests
RUN pip3 install lxml
RUN pip3 install influxdb
RUN pip3 install yfinance --upgrade --no-cache-dir

WORKDIR /python
CMD ["python3", "main.py"]
