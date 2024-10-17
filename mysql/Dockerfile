# Use the official MySQL image from the Docker Hub
FROM mysql:latest

# Copy the initialization script to the Docker image
COPY ./mysql-init/ /docker-entrypoint-initdb.d/

# Set environment variables (these will be used when the container starts)
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=todo_database
ENV MYSQL_USER=todouser
ENV MYSQL_PASSWORD=password

# Expose the MySQL port
EXPOSE 3306
