FROM openjdk:8-jre-alpine

EXPOSE 8080

WORKDIR /usr/app

# Copy the JAR file (assuming only one .jar in build/libs)
COPY ./build/libs/*.jar ./app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]