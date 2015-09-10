FROM redis:latest
MAINTAINER YI-HUNG JEN <yihungjen@gmail.com>

# override original entrypoint script to fit our constraint
COPY entrypoint.sh /entrypoint.sh

# setup default configuration
COPY redis.conf /usr/local/etc/redis/redis.conf
COPY sentinel.conf /data/sentinel.conf

# To run redis-brick as server do
#
# docker run --rm -p 4001:4001 --name redis-node1 \
#    magvlab/redis-brick server --port 4001
#
# To run redis-brick as sentinel do
#
# docker run --rm -p 5001:5001 --name redis-sentinel1 \
#   magvlab/redis-brick sentinel --port 5001
#
