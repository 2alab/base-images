FROM openjdk:8-jdk-slim

RUN mkdir /deployments/

#ENV JAVA_TOOL_OPTIONS

WORKDIR /deployments/

CMD ["java", \
 "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap","-XX:MaxRAMFraction=1","-XshowSettings:vm", \
 "-XX:+CrashOnOutOfMemoryError","-XX:+HeapDumpOnOutOfMemoryError", "-XX:HeapDumpPath=/tmp", \
 "-XX:MaxHeapFreeRatio=40","-XX:MinHeapFreeRatio=20", \
 "-Djava.security.egd=file:/dev/./urandom", \
 "-Duser.timezone=Europe/Moscow", \
 "-Dspring.profiles.active=production", \
 "-Dserver.port=8080", \
 "-classpath", ".",\
 "org.springframework.boot.loader.JarLauncher"]
