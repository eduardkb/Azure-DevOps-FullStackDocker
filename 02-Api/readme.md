# Backend API

## Build docker image

```sh
docker build -t api .
```

## Run Docker Image

```sh
docker run -d `
  --name api `
  --network webappnet `
  --env-file .env `
  -p 4000:80 `
  --restart unless-stopped `
  api
```
