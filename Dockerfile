FROM postgres:9.4

#copied from https://hub.docker.com/r/mdillon/postgis/~/dockerfile/
ENV POSTGIS_MAJOR 2.3
ENV POSTGIS_VERSION 2.3.2+dfsg-1~exp1.pgdg80+1

RUN apt-get update \
      && apt-get install -y --no-install-recommends \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR=$POSTGIS_VERSION \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR-scripts=$POSTGIS_VERSION \
           postgis=$POSTGIS_VERSION \
      && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-postgis.sh /docker-entrypoint-initdb.d/postgis.sh
# end copy
COPY ./initdb-biodiversity-user.sh /docker-entrypoint-initdb.d/biodiversity-user.sh
COPY ./initdb-biodiversity-create-database.sh /docker-entrypoint-initdb.d/biodiversity-create-database.sh



