FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=12345678

ADD script.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
