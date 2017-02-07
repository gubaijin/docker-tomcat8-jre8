FROM tomcat:8-jre8
ENV LANG en_US.UTF-8

RUN set -e \
	&& if [[ "$JAVA_OPTS" != *-Djava.security.egd=* ]]; then \
    JAVA_OPTS="$JAVA_OPTS -Djava.security.egd=file:/dev/./urandom"; \
fi
