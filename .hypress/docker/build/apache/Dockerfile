FROM httpd:2.4

RUN groupadd -g 500 www
RUN useradd -g 500 -u 500 www

RUN apt-get update \
    && apt-get install -y --no-install-recommends libaprutil1-dbd-mysql

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY hypress.conf /usr/local/apache2/conf/hypress.conf