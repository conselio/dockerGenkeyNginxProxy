FROM simplyintricate/nginx-php:latest

RUN apt-get update && apt-get install -y php5-dev libyaml-dev && \
	pecl install yaml && \
	echo "extension=yaml.so" >> /etc/php5/fpm/conf.d/20-yaml.ini
