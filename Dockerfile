
# I'm almost done.
# https://gist.github.com/ju2wheels/3d1a1dfa498977874d03

FROM openjdk:8-jre
MAINTAINER Stijn van Dongen <svd@sanger.ac.uk>


# Add required dependencies
# - bash 
# - gnu coreutils 
# - curl 
RUN apk update && apk add bash && apk add coreutils && apk add curl

# see https://blogs.oracle.com/java-platform-group/java-se-support-for-docker-cpu-and-memory-limits
ENV NXF_OPTS='-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap' NXF_HOME=/.nextflow

wget -qO- https://get.nextflow.io | bash

RUN mv nextflow /usr/local/bin/nextflow



