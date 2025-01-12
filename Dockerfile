FROM openjdk:23-jdk AS build
COPY . .
RUN mvn clean package -DskipTests

FROM eclipse-temurin:23-jdk-alpine
COPY --from=build /target/Tech-Notes-0.0.1-SNAPSHOT.war Tech-Notes.war
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "Tech-Notes.war" ]