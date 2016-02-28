FROM ashwanthkumar/gocd-agent-jdk-aws:16.2.1

MAINTAINER Ashwanth Kumar

ENV MVN_VERSION=3.3.9

RUN curl -sSL "http://mirror.fibergrid.in/apache/maven/maven-3/${MVN_VERSION}/binaries/apache-maven-${MVN_VERSION}-bin.tar.gz" | tar -xzf - -C /opt/  \
    && mv /opt/apache-maven* /opt/maven \
    && ln -s /opt/maven/bin/mvn /usr/bin/mvn  \
    && curl -s https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt > /usr/local/bin/sbt \
    && chmod 0755 /usr/local/bin/sbt \
    && rm -rf /var/cache/apk/* /tmp/*
