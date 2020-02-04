FROM openjdk:8-jre

MAINTAINER poldepaor

RUN mkdir /var/dynamodb_local

WORKDIR /var/dynamodb_local

VOLUME ["/dynamodb_local_db"]

ENV DYNAMODB_VERSION=2020-01-24

ENV DYNAMODB_PORT=8000

ENV JAVA_OPTS=

RUN curl -sL -O https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_${DYNAMODB_VERSION}.tar.gz && \
    tar zxvf dynamodb_local_${DYNAMODB_VERSION}.tar.gz 

COPY ./entry.sh /

ENTRYPOINT ["/entry.sh"]

EXPOSE 8000

CMD ["--sharedDb", "-dbPath", "/dynamodb_local_db"]
