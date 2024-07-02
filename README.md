1. Clone the repository

```sh
git https://github.com/IlliaLiash/test.git
cd https://github.com/IlliaLiash/test.git
```

2. Build the Docker Image 

```sh
docker build -t my-nestjs-postgres-pm2-image .
```

3. Run the Docker Container

```sh
docker run -d -p 5432:5432 -p 3000:3000 my-nestjs-postgres-pm2-image
```