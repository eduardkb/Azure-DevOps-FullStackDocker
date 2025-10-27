# Backend API

## Build docker image

```sh
docker build -t web .
```

## Run Docker Image

```sh
docker run -d -p 80:80 `
    --name web `
    --network webappnet `
    --env-file .env `
    --restart unless-stopped `
    web
```
