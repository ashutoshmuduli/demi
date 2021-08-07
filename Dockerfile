FROM openjdk:8-jdk-alpine
COPY /opt/deploy/demo-0.0.1-SNAPSHOT.jar .
EXPOSE 8080
CMD ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]
