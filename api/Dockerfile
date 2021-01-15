
FROM openjdk:11
COPY . .
RUN apt-get update 
RUN ./mvnw package -Dmaven.test.skip=true
CMD ["java","-jar","target/tlcdemoApp-1.0.0-SNAPSHOT-runner.jar"]
