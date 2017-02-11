FROM registry.cn-hangzhou.aliyuncs.com/gplucky/java
RUN yum -y install tar make gcc net-tools gcc-c++
COPY apache-tomcat-8.0.37.tar.gz /opt/
COPY cronolog-1.6.2.tar.gz /opt/
RUN cd /opt/ &&\
    tar zxvf apache-tomcat-8.0.37.tar.gz && \
    mv apache-tomcat-8.0.37 tomcat && \
    rm /opt/apache-tomcat-8.0.37.tar.gz &&\
    tar xf cronolog-1.6.2.tar.gz &&\
    cd cronolog-1.6.2 &&\
    ./configure &&\
    make && make install
CMD tail -f /opt/tomcat/logs/catalina.out
