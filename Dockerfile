FROM nginx:1.21

RUN apt-get update && apt-get install -y vim iputils-ping \
# install internal server \
python3
RUN mkdir -p /var/www/html

COPY conf/default.conf /etc/nginx/conf.d/
COPY scripts/docker-entrypoint.sh /
RUN chmod u+x /docker-entrypoint.sh


EXPOSE 8000

WORKDIR /var/www/html
ENTRYPOINT ["/docker-entrypoint.sh"]
