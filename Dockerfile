FROM tomcat:8-jre8
RUN ./setShell
CMD ["catalina.sh", "run"]

