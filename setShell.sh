#!/bin/sh
if[["$JAVA_OPTS"!=*-Djava.security.egd=*]];then JAVA_OPTS="$JAVA_OPTS -Djava.security.egd=file:/dev/./urandom"
fi
