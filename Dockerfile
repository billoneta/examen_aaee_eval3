# Usamos una imagen de Java 23 (o la que use tu proyecto)
FROM eclipse-temurin:23-jdk-alpine

# Exponemos el puerto 8080
EXPOSE 8080

# Copiamos el archivo .jar generado por Maven a la imagen
# Nota: Asegúrate de que el nombre del .jar coincida con el que genera tu proyecto
COPY target/*.jar app.jar

# Comando para ejecutar la aplicación
ENTRYPOINT ["java","-jar","/app.jar"]
