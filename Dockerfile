FROM mysql


ENV MYSQL_ROOT_PASSWORD=firstpass



EXPOSE 3306

COPY . /docker-entrypoint-initdb.d