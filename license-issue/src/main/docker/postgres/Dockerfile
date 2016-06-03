FROM ceagan/postgres-postgis:9.4-2.1

ENV POSTGRES_PASSWORD secret

ADD example.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
