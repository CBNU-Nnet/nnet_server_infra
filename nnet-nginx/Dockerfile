FROM seansin/nginx:1.12.0
MAINTAINER Seansin <seansin@chungbuk.ac.kr>

ADD app.conf /usr/local/nginx/conf/sites/app.conf
ADD xe_rewrite.conf /usr/local/nginx/conf/sites/xe_rewrite.conf 
WORKDIR /var/www/html/zbxe

RUN mkdir -p /var/log/nginx && \
    touch /var/log/nginx/error.log && \
    touch /var/log/nginx/access.log && \
    chown -R www-data:www-data /var/log/nginx  

RUN ln -sf /dev/stderr /var/log/nginx/error.log && \
    ln -sf /dev/stdout /var/log/nginx/access.log

CMD /usr/local/sbin/nginx