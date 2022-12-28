FROM ubuntu:20.04

ARG SPARK_VERSION=3.1.3
ARG HADOOP_VERSION=3.2
ARG MAVEN_VERSION=3.8.6

ENV MAVEN=https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz
ENV SPARK=https://dlcdn.apache.org/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz

# install dependencies
RUN apt-get update && apt-get install -y software-properties-common gcc && \
    add-apt-repository -y ppa:deadsnakes/ppa

RUN apt-get update && \
    apt-get install -y python3.6 python3-distutils python3-pip python3-apt tar git wget zip openjdk-8-jdk
RUN ln -s /usr/bin/python3 /usr/bin/python

WORKDIR /project

# download
RUN wget $SPARK
RUN wget $MAVEN

# extract
RUN tar zxfv apache-maven-${MAVEN_VERSION}-bin.tar.gz
RUN tar zxfv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz

RUN rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz
RUN rm apache-maven-${MAVEN_VERSION}-bin.tar.gz

RUN mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} spark
RUN mv apache-maven-${MAVEN_VERSION} maven

ENV SPARK_HOME /project/spark
ENV MAVEN_HOME /project/maven
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/jre
ENV PATH $PATH:$MAVEN_HOME/bin:$SPARK_HOME/bin:$JAVA_HOME/bin

RUN echo "export SPARK_CONF_DIR=$GLUE_HOME/conf" >> /root/.bashrc
RUN echo "export PYTHONPATH=\$PYTHONPATH:\$GLUE_HOME" >> ~/.bash_profile
RUN cd $SPARK_HOME/python/ && python setup.py sdist && pip install dist/*.tar.gz

CMD ["bash"]