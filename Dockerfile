FROM tomcat:10.1.0-jdk17-corretto

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

COPY ./target/DemoServletDocker-1.0-SNAPSHOT.war /usr/local/tomcat/webapps//.war
CMD ["catalina.sh", "run"]