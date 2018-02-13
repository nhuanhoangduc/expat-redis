FROM centos

# Install redis
RUN yum install epel-release -y && \
	yum update -y && \
	yum install redis -y && \
	rm -rf /var/cache/yum && \
	echo "bind 0.0.0.0" >> /etc/redis.conf

VOLUME /var/lib/redis

USER root

CMD redis-server /etc/redis.conf

EXPOSE 6379
