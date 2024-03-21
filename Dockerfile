FROM openjdk:17-oracle
WORKDIR /target
COPY target/. .
EXPOSE 8080
CMD java -jar *.jar