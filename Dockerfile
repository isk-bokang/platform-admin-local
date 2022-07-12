FROM openjdk:17.0.2 AS builder
COPY gradlew .
COPY settings.gradle.kts .
COPY build.gradle.kts .
COPY gradle gradle
COPY src src
RUN chmod +x ./gradlew
RUN ./gradlew bootJar

FROM openjdk:17.0.2 AS deployer
RUN mkdir /opt/app
COPY --from=builder build/libs/*.jar /opt/app/spring-boot-application.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/opt/app/spring-boot-application.jar"]