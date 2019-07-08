FROM  openjdk:8

RUN mkdir -p apps/applications/dn-notification-app
Run mkdir -p apps/applications/logs
COPY target/spring-boot-web-0.0.1-SNAPSHOT.jar  /apps/applications/dn-notification-app/spring-boot-web-0.0.1-SNAPSHOT.jar 
EXPOSE 8085
CMD ["sh", "-c", "java -jar /apps/applications/dn-notification-app/spring-boot-web-0.0.1-SNAPSHOT.jar  > /apps/applications/logs/dn-notification.log"]

CMD java -jar /apps/applications/dn-notification-app/spring-boot-web-0.0.1-SNAPSHOT.jar   >  /apps/applications/logs/dn-notification.log

