#Stage1
FROM maven:3.8.1-openjdk-11-slim AS build

WORKDIR /Users/i342774/Desktop/work/
COPY . /Users/i342774/Desktop/work/




RUN mvn -f /Users/i342774/Desktop/work/pom.xml clean package
FROM docker.wdf.sap.corp:51277/build-agent/sapmachine:17.0.6-1 as JarBuilder
COPY --from=build /home/app/target/CodeExample-0.0.1-SNAPSHOT.jar /Users/i342774/Desktop/work/demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/Users/i342774/Desktop/work/demo.jar"]