FROM openjdk-11-jre-slim
WORKDIR /app
COPY /tartget/*.jar /app/app.jar
EXPOSE 8084
CMD ["java -jar /app/app.jar"]
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
