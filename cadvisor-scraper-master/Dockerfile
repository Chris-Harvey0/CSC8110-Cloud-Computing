from openjdk:8-jdk-alpine

ADD /target/cadvisor-scrape-1.0-jar-with-dependencies.jar /usr/local/source/cadvisor-scrape-1.0-jar-with-dependencies.jar

WORKDIR /usr/local/source

ENTRYPOINT ["java", "-jar", "cadvisor-scrape-1.0-jar-with-dependencies.jar"]
