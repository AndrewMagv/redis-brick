FROM redis:latest
MAINTAINER YI-HUNG JEN <yihungjen@gmail.com>

COPY redis.conf /usr/local/etc/redis/redis.conf
ENTRYPOINT ["redis-server", "/usr/local/etc/redis/redis.conf"]
