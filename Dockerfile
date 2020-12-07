FROM python:alpine3.7
WORKDIR /webapp
COPY . /webapp
RUN pip install -r installs.txt
EXPOSE 5000
CMD ["python","py4docker.py]
