FROM maven:3.6.1-jdk-14
WORKDIR /app
COPY ./.
RUN mvn -B clean verify package
FROM tomcat:8.5-alpine
VOLUME /tmp
COPY --from=0 /app/target/*war .
COPY ./target/TechTonics.war /usr/local/tomcat/webapps/app.war
RUN sh -c 'touch /usr/local/tomcat/webapps/app.war'
CMD ["catalina.sh", "run"]
