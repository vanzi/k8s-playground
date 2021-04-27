FROM python:3.8-slim-buster
WORKDIR /app
RUN apt-get update -q && apt-get install iputils-ping curl -q -yy && apt-get clean
COPY falcon-app/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY falcon-app falcon-app
COPY docker/init.sh init.sh
ENTRYPOINT [ "/app/init.sh" ]
