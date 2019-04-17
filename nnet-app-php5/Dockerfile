FROM seansin/php5-fpm:latest
MAINTAINER Seansin <seansin@chungbuk.ac.kr>

# Add source & config files
WORKDIR /var/www/html/zbxe
# Clear zbxe
RUN rm -rf /var/www/html/zbxe 
RUN cd /var/www/html && \
    mkdir -p zbxe && \ 
    chown www-data:www-data zbxe

ADD src/ /var/www/html/zbxe
ADD custom.ini /etc/php/5.6/fpm/conf.d/99-php-custom.ini

# Volume
VOLUME /var/www/html/zbxe

COPY start.sh /usr/local/bin/
RUN ln -s usr/local/bin/start.sh /start.sh
CMD ["start.sh"]
