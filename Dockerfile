FROM tomcat:8.5-alpine
VOLUME /tmp
COPY ./target/TechTonics.war /usr/local/tomcat/webapps/app.war
RUN sh -c 'touch /usr/local/tomcat/webapps/app.war'
CMD ["catalina.sh", "run"]
