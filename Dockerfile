FROM tomcat:8-jre8
COPY setShell.sh /
RUN  ./setShell.sh
CMD ["catalina.sh", "run"]

