FROM liuchenwei/docker-sfs3
COPY ./configs/php.ini /etc/php5/fpm/conf.d/custom.ini
COPY ./configs/nginx.conf /etc/nginx/nginx.conf
COPY ./configs/app.conf /etc/nginx/sites-enabled/app.conf
COPY ./sfs3/include/config.php /var/www/app/include/config.php
RUN ["chmod", "444", "/var/www/app/include/config.php"]
