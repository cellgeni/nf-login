
# I'm almost done.
# https://gist.github.com/ju2wheels/3d1a1dfa498977874d03

FROM openjdk:8-jre
MAINTAINER Stijn van Dongen <svd@sanger.ac.uk>

RUN apt-get update -y --no-install-recommends \
    && apt-get -y install -f \
      vim \
      bsdmainutils \
      file \
      rsync \
      ssh \
      zlib1g-dev \
      libssl-dev \
      libcurl4-openssl-dev


# see https://blogs.oracle.com/java-platform-group/java-se-support-for-docker-cpu-and-memory-limits
ENV NXF_OPTS='-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap' NXF_HOME=/.nextflow

RUN export NXF_VER=18.10.1 && wget -qO- https://get.nextflow.io | bash

RUN mv nextflow /usr/local/bin/nextflow



