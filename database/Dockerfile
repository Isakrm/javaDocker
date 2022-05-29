FROM mysql:5.7
ENV MYSQL_ROOT_PASSWORD urubu100
ENV MYSQL_DATABASE logs-ingresse
ENV MYSQL_USER ingresse
ENV MYSQL_PASSWORD urubu100
ADD local.sql / docker-entrypoint-initdb.d
EXPOSE 3306
