FROM tomcat:8-jre8
RUN if [[ "$JAVA_OPTS" != *-Djava.security.egd=* ]]; then
    JAVA_OPTS="$JAVA_OPTS -Djava.security.egd=file:/dev/./urandom"
fi
CMD ["catalina.sh", "run"]

