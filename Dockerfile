FROM centos:7

RUN yum update -y && \
    yum install -y wget && \
    yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
    yum install -y dracut-fips dracut-fips-aesni && \
    yum clean all
    
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk/

LABEL name="unify360 base image"  \
      version="0.0.1"  \
      base="centos:7"  \
      java="openjdk 8"   \
      fips-enablement="true"   \
      fips-requirements="1. enable fips on host. 2. mount /etc/system-fips from host to container."