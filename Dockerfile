FROM eclipse-temurin:17-jre-alpine

RUN apk update && apk add --no-cache wget
RUN mkdir -p /opt/shinyproxy/

WORKDIR /opt/shinyproxy/
RUN wget -O shinyproxy.jar https://www.shinyproxy.io/downloads/shinyproxy-2.6.1.jar

CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]