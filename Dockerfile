FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY demo.jar app.jar
ENV PORT=8080
EXPOSE ${PORT}
ENTRYPOINT ["sh", "-c", "java -jar app.jar --server.port=${PORT}"]
