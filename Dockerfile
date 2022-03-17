FROM java:8
EXPOSE 8080
ADD /target/spring-boot-docker-image.jar spring-boot-docker-image.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker-image.jar"]