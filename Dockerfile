FROM mysql

#Add a database
ENV MySQL_ROOT_PASSWORD root
ENV MySQL_DATABASE PucsdStudentS
ENV MySQL_USER pucsd
ENV MySQL_PASSWORD pucsd

# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY mysql.sql /docker-entrypoint-initdb.d

EXPOSE 3306
