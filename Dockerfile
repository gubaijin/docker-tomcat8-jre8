FROM tomcat:8-jre8
RUN ./setShell.sh
CMD ["catalina.sh", "run"]

