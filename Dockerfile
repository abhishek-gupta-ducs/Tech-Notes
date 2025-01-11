FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:23-jdk
COPY --from=build /target/Tech-Notes-0.0.1-SNAPSHOT.jar Tech-Notes.jar
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "Tech-Notes.jar" ]