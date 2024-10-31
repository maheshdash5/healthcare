FROM amazoncorretto:17.0.7-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
WORKDIR myapp
COPY target/*.jar app.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","/app.jar"]