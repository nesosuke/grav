FROM ubuntu:20.04
RUN echo "Etc/UTC" > /etc/localtime && \
    apt-get update && \
    apt-get -y install git php php-fpm php-zip php-curl php-mbstring php-gd php-dom && \
    rm -rf /var/www/html && \
    git clone https://github.com/getgrav/grav /var/www/html && \
    cd /var/www/html && \
    bin/gpm install admin && \ 
    chown -R www-data:www-data /var/www/html
USER www-data:www-data