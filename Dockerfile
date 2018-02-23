FROM openjdk:9-jre
VOLUME /tmp
ARG JAR_FILE
ADD build/libs/${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-XX:+UnlockExperimentalVMOptions","-XX:+UseCGroupMemoryLimitForHeap","-jar","/app.jar"]