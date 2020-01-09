FROM openjdk:8-jre-alpine

COPY build/docker/lib/ /app/BOOT-INF/lib/
COPY build/docker/app/ /app/

CMD java -cp /app/ org.springframework.boot.loader.JarLauncher

EXPOSE 8080