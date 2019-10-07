FROM        aemdesign/centos-tini:centos7

MAINTAINER  devops <devops@aem.design>

LABEL   os="centos 7" \
        container.description="openjdk" \
        version="jdk8" \
        imagename="openjdk" \
        test.command=" java -version 2>&1 | grep 'java version' | sed -e 's/.*java version "\(.*\)".*/\1/'" \
        test.command.verify="1.8"

RUN yum -y install java-1.8.0-openjdk-devel