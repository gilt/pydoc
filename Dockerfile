# Dockerfile
FROM dreen/flask
MAINTAINER dreen
WORKDIR /webapp

# Get source
RUN mkdir -p /webapp
#RUN pip install -r installs.txt

COPY py4docker.tar.gz /webapp/py4docker.tar.gz
RUN tar -xvf py4docker.tar.gz
RUN rm py4docker.tar.gz

# Run server
EXPOSE 5000
CMD ["python", "py4docker.py"]