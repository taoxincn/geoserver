FROM openjdk:11-jre

ENV GEOSERVER_HOME="/srv/geoserver"

RUN set -ex; \
    \
    mkdir -p "${GEOSERVER_HOME}"; \
    wget http://sourceforge.net/projects/geoserver/files/GeoServer/2.20.0/geoserver-2.20.0-bin.zip; \
    unzip geoserver-2.20.0-bin.zip "${GEOSERVER_HOME}"; \
    rm -r geoserver-2.20.0-bin.zip

EXPOSE 8080

CMD ["${GEOSERVER_HOME}/bin/startup.sh"]
