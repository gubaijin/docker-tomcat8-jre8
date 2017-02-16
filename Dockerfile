FROM tomcat:8-jre8
COPY setShell.sh /
RUN chmod +x /setShell.sh && \
    ./setShell.sh
CMD ["catalina.sh", "run"]

