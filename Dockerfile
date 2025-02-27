# Imagem base com JDK 17 (ou a versão do Java que você está a usar)
FROM openjdk:17-jdk-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo pom.xml e o código fonte para o container
COPY pom.xml ./
COPY src ./src

# Compila o projeto usando o Maven Wrapper (ou mvn se o wrapper não estiver presente)
RUN ./mvnw package -DskipTests

# Expõe a porta 8080 (ou a porta configurada na sua aplicação)
EXPOSE 8080

# Define o comando para iniciar a aplicação
CMD ["java", "-jar", "target/seu-aplicativo.jar"]
