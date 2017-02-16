FROM tomcat:8-jre8
COPY setShell.sh /opt/
RUN  cd /opt && \
    chmod +x /setShell.sh && \
    ./setShell.sh
CMD ["catalina.sh", "run"]

