FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y postgresql postgresql-contrib curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean

RUN service postgresql start && \
    su - postgres -c "psql --command \"CREATE DATABASE mydatabase;\"" && \
    su - postgres -c "psql --command \"CREATE USER myuser WITH ENCRYPTED PASSWORD 'mypassword';\"" && \
    su - postgres -c "psql --command \"GRANT ALL PRIVILEGES ON DATABASE mydatabase TO myuser;\""

WORKDIR /app

COPY ./server /app

RUN npm install

RUN npm install pm2 -g

EXPOSE 5432
EXPOSE 3000

CMD service postgresql start && pm2 start dist/main.js --name "nest-app" --no-daemon
