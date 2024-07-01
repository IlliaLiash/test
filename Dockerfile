# Use the official Ubuntu image as a base image
FROM ubuntu:latest

# Install PostgreSQL
RUN apt-get update && \
    apt-get install -y postgresql postgresql-contrib

# Set the default command to run PostgreSQL
CMD ["postgres"]

# Expose the PostgreSQL port
EXPOSE 5432
# Use the official Ubuntu image as a base image
FROM ubuntu:latest

# Install PostgreSQL
RUN apt-get update && \
    apt-get install -y postgresql postgresql-contrib

# Set the default command to run PostgreSQL
CMD ["postgres"]

# Expose the PostgreSQL port
EXPOSE 5432
