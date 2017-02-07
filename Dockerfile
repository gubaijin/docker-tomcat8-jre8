FROM tomcat:8-jre8
ENV LANG en_US.UTF-8

RUN export set JAVA_OPTS="$JAVA_OPTS -Djava.security.egd=file:/dev/./urandom"
