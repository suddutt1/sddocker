FROM openjdk:8u212-jre
RUN mkdir -p /opt/kafka
RUN mkdir -p /config
COPY  kafka_2.12-2.2.0/ /opt/kafka
CMD tail -f /dev/null

