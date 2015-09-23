FROM redis:latest
MAINTAINER YI-HUNG JEN <yihungjen@gmail.com>

# override original entrypoint script to fit our constraint
COPY entrypoint.sh /entrypoint.sh

# setup default configuration
COPY redis.conf /usr/local/etc/redis/redis.conf
COPY sentinel.conf /var/local/etc/redis/sentinel.conf
