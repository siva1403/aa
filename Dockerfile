FROM openjdk:11.0.11-jre-slim
WORKDIR /app
COPY /tartget/NotherSecurity-1.0.0.jar.jar /app/NotherSecurity-1.0.0.jar.jar
EXPOSE 8084
CMD ["java -jar /app/NotherSecurity-1.0.0.jar.jar"]
#ENTRYPOINT ["java", "-jar", "/app/NotherSecurity-1.0.0.jar.jar"]sss