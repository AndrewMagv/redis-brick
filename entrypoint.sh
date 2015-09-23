#!/bin/bash
set -e

case "$1" in
    server)
        shift 1
	    chown -R redis .
	    exec gosu redis redis-server /usr/local/etc/redis/redis.conf $@
        ;;
    sentinel)
        shift 1
	    chown -R redis /var/local/etc/redis
        exec gosu redis redis-sentinel /var/local/etc/redis/sentinel.conf $@
        ;;
    *)
        exec "$@"
        ;;
esac
