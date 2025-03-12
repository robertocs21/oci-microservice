FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-<your student id>
COPY /target/*.jar oci-microservice.jar
COPY /src/main/resources/Wallet_javadev /oci-microservice/Wallet_javadev
ENV TNS_ADMIN=/oci-microservice/Wallet_javadev
EXPOSE 8080
ENTRYPOINT [ "java","-jar", "oci-microservice.jar" ]