FROM registry.cn-hangzhou.aliyuncs.com/gplucky/java
COPY apache-tomcat-8.5.11.tar.gz /opt/
COPY cronolog-1.6.2.tar.gz /opt/
RUN yum install -y tar make gcc net-tools gcc-c++
RUN cd /opt/ &&\
    tar zxvf apache-tomcat-8.5.11.tar.gz && \
    mv apache-tomcat-8.5.11 tomcat && \
    rm /opt/apache-tomcat-8.5.11.tar.gz && \
    tar xf cronolog-1.6.2.tar.gz && \
    cd cronolog-1.6.2 && \
    ./configure && \
    make && make install
RUN yum install -y rng-tools && \
RUN touch /opt/tomcat/logs/catalina.out
CMD systemctl start rngd
