FROM openjdk:11
ADD target/user-management-service-0.0.1-SNAPSHOT.jar user-management.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","user-management.jar"]