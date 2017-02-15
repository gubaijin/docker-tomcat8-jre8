FROM registry.cn-hangzhou.aliyuncs.com/gplucky/java
COPY apache-tomcat-8.0.37.tar.gz /opt/
COPY cronolog-1.6.2.tar.gz /opt/
RUN yum install -y tar make gcc net-tools gcc-c++
RUN cd /opt/ &&\
    tar zxvf apache-tomcat-8.0.37.tar.gz && \
    mv apache-tomcat-8.0.37 tomcat && \
    rm /opt/apache-tomcat-8.0.37.tar.gz && \
    touch /opt/tomcat/logs/catalina.out
    tar xf cronolog-1.6.2.tar.gz &&\
    cd cronolog-1.6.2 &&\
    ./configure &&\
    make && make install
CMD cd /opt/tomcat/bin && \
    ./startup.sh && \
    tail -f /opt/tomcat/logs/catalina.out
