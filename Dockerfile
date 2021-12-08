FROM openjdk:8-jre-slim

RUN apt update && apt install -y \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/shinyproxy/

WORKDIR /opt/shinyproxy/
RUN wget -O shinyproxy.jar https://www.shinyproxy.io/downloads/shinyproxy-2.6.0.jar

CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
