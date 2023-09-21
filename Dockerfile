FROM maven:3.8.5-openjdk-17-slim  AS build

<<<<<<< HEAD
WORKDIR /Users/i342774/Downloads/CodeExample/
=======
WORKDIR /Users/i342774/Desktop/CodeExample/
>>>>>>> 6993083e607eeb93eba4c2377234e2a9f00e42bf

COPY src /usr/local/lib/src
COPY pom.xml /usr/local/lib

WORKDIR /usr/local/lib

RUN mvn -f ./pom.xml clean package

FROM docker.wdf.sap.corp:51277/build-agent/sapmachine:17.0.6-1 as JarBuilder

COPY --from=build /usr/local/lib/target/CodeExample-0.0.1-SNAPSHOT.jar  /usr/local/lib/target/CodeExample.jar
EXPOSE 8080
RUN chmod -R 0777 "/usr/local/lib/target/CodeExample.jar"
<<<<<<< HEAD
ENTRYPOINT ["java","-jar","/usr/local/lib/target/CodeExample.jar"]
=======
ENTRYPOINT ["java","-jar","/usr/local/lib/target/CodeExample.jar"]
>>>>>>> 6993083e607eeb93eba4c2377234e2a9f00e42bf
