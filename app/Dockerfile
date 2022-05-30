FROM openjdk:11
ADD /teste-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar
EXPOSE 8002
#CMD ["java","-jar","teste-1.0-SNAPSHOT-jar-with-dependencies.jar"]
ENTRYPOINT ["java","-jar","app.jar"]
