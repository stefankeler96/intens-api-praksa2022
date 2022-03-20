FROM maven:3-openjdk-8 AS build
RUN mkdir /usr/src/project
COPY . /usr/src/project
WORKDIR /usr/src/project
RUN mvn clean install

FROM openjdk:8-jre-alpine
RUN mkdir /project
COPY --from=build /usr/src/project/target/praksa2022.jar /project/
WORKDIR /project
CMD java -jar praksa2022.jar