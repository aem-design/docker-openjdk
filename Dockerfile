FROM        aemdesign/centos-tini:centos7

LABEL   os="centos 7" \
        container.description="openjdk" \
        version="jdk8" \
        maintainer="devops <devops@aem.design>" \
        imagename="openjdk" \
        test.command=" java -version 2>&1 | grep 'java version' | sed -e 's/.*java version "\(.*\)".*/\1/'" \
        test.command.verify="1.8"

RUN \
    yum -y update && \
    yum -y install java-1.8.0-openjdk-devel && \
    yum clean all && \
    rm -rf /var/cache/yum
