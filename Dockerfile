FROM centos:7.2
ENV LANG en_US.UTF-8
COPY apache-tomcat-8.5.11.tar.gz /opt/
COPY cronolog-1.6.2.tar.gz /opt/
RUN yum install -y java-1.8.0-openjdk
RUN yum install -y tar make gcc net-tools gcc-c++
RUN cd /opt/ &&\
    tar zxvf apache-tomcat-8.5.11.tar.gz && \
    mv apache-tomcat-8.5.11 tomcat && \
    rm /opt/apache-tomcat-8.5.11.tar.gz && \
    tar xf cronolog-1.6.2.tar.gz && \
    cd cronolog-1.6.2 && \
    ./configure && \
    make && make install
RUN touch /opt/tomcat/logs/catalina.out
