# redis-brick
Configuration repo for default Redis brick setup

# How to run redis-brick

## Running redis-brick as server
```
docker run -d --net=host --name brick-1 magvlab/redis-brick server
```

## Running redis-brick as sentinel
```
docker run -d --net=host --name sentinel-1 magvlab/redis-brick \
    sentinel --sentinel announce-ip ${your-public-ip}
```
