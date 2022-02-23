FROM centos:7
RUN yum update -y && yum install -y python3 python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install flask
COPY app.py /opt/
RUN ln -fs /usr/bin/python3 /usr/bin/python
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
