FROM tomcat:8-jre8
COPY setShell.sh /opt/
RUN  cd /opt && \
    chmod +x /check.sh && \
    ./setShell.sh
CMD ["catalina.sh", "run"]

