FROM tomcat:8-jre8
ENV LANG en_US.UTF-8
ENV CATALINA_HOME /usr/share/tomcat8
ENV CATALINA_BASE /var/lib/tomcat8
ENV CATALINA_PID  /var/run/tomcat8.pid
ENV CATALINA_SH   /usr/share/tomcat8/bin/catalina.sh
ENV CATALINA_TMPDIR /tmp/tomcat8-tomcat8-tmp

RUN mkdir -p $CATALINA_TMPDIR

VOLUME ["/home/volume/tomcat8/webapps"]

EXPOSE 8080 9000

ENTRYPOINT ["/usr/share/tomcat8/bin/catalina.sh", "run" ]