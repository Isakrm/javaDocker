FROM openjdk:11
COPY . /src/java
WORKDIR /src/java
RUN ["java","-jar","teste-cont-1.0-SNAPSHOT-jar-with-dependencies.jar"]
ENTRYPOINT ["java","teste-cont-1.0-SNAPSHOT-jar-with-dependencies.jar"]
