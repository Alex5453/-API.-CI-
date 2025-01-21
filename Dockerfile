FROM eclipse-temurin:11-jre-jammy

WORKDIR /app

# Копируем JAR-файл из папки artifacts в текущую директорию
# Предполагается, что Dockerfile находится в корне проекта, где есть папка artifacts
COPY artifacts/app-mbank.jar .

EXPOSE 9999

ENTRYPOINT ["java", "-jar", "app-mbank.jar"]
