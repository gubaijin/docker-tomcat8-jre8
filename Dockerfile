FROM tomcat:8-jre8
ENV LANG en_US.UTF-8
ENV CATALINA_HOME /usr/local/tomcat8
ENV CATALINA_BASE /usr/local/tomcat8

EXPOSE 8080 8081

CMD ["catalina.sh", "run"]
