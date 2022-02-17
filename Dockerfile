FROM centos:7
RUN yum update -y && yum install -y python python-pip
RUN pip install --upgrade pip
RUN pip install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
